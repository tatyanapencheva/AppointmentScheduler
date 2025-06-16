using Microsoft.AspNetCore.Mvc.Rendering;
using System.Collections.Generic;

namespace AppointmentScheduling.Utility
{
    public static class Helper
    {
        public static string Admin { get; } = "Admin";
        public static string Patient { get; } = "Patient";
        public static string Doctor { get; } = "Doctor";
        public static string AppointmentAdded { get; } = "Appointment added successfully.";
        public static string AppointmentUpdated { get; } = "Appointment updated successfully.";
        public static string AppointmentDeleted { get; } = "Appointment deleted successfully.";
        public static string AppointmentExists { get; } = "Appointment for selected date and time already exists.";
        public static string AppointmentNotExists { get; } = "Appointment not exists.";
        public static string MeetingConfirm { get; } = "Meeting confirmed successfully.";
        public static string MeetingConfirmError { get; } = "Error while confirming meeting.";
        public static string AppointmentAddError { get; } = "Something went wrong, please try again.";
        public static string AppointmentUpdateError { get; } = "Something went wrong, please try again.";
        public static string SomethingWentWrong { get; } = "Something went wrong, please try again.";

        public static int SuccessCode { get; } = 1;
        public static int FailureCode { get; } = 0;

        public static List<SelectListItem> GetRolesForDropDown(bool isAdmin)
        {
            if (isAdmin)
            {
                return new List<SelectListItem>
                {
                    new SelectListItem { Value = Helper.Admin, Text = Helper.Admin }
                };
            }
            else
            {
                return new List<SelectListItem>
                {
                    new SelectListItem { Value = Helper.Patient, Text = Helper.Patient },
                    new SelectListItem { Value = Helper.Doctor, Text = Helper.Doctor }
                };
            }
        }

        public static List<SelectListItem> GetTimeDropDown()
        {
            List<SelectListItem> duration = new List<SelectListItem>();
            int minutes = 30;

            for (int i = 1; i <= 4; i++)
            {
                int hours = minutes / 60;
                int remainingMinutes = minutes % 60;
                string timeText;

                if (hours > 0 && remainingMinutes == 0)
                {
                    timeText = $"{hours} hr";
                }
                else if (hours > 0 && remainingMinutes > 0)
                {
                    timeText = $"{hours} hr {remainingMinutes} min";
                }
                else
                {
                    timeText = $"{remainingMinutes} min";
                }

                duration.Add(new SelectListItem { Value = minutes.ToString(), Text = timeText });

                minutes += 30;
            }

            return duration;
        }

    }
}
