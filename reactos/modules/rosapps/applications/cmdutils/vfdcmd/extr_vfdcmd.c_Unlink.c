
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 scalar_t__ CheckDriver () ;
 int CloseHandle (scalar_t__) ;
 int ERROR_SUCCESS ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MSG_ACCESS_NG ;
 int MSG_DUPLICATE_ARGS ;
 int MSG_HINT_ULINK ;
 int MSG_NOT_INSTALLED ;
 int MSG_NOT_STARTED ;
 int MSG_TARGET_NOTICE ;
 int MSG_UNKNOWN_OPTION ;
 int PrintDriveLetter (scalar_t__,int) ;
 int PrintMessage (int ,...) ;
 scalar_t__ SERVICE_RUNNING ;
 char* SystemError (int ) ;
 int TARGET_NONE ;
 int VFD_MAXIMUM_DEVICES ;
 int VFD_NG ;
 scalar_t__ VFD_NOT_INSTALLED ;
 scalar_t__ VFD_OK ;
 int VfdGetDeviceNumber (scalar_t__,int*) ;
 scalar_t__ VfdOpenDevice (int) ;
 int VfdSetGlobalLink (scalar_t__,int ) ;
 int VfdSetLocalLink (scalar_t__,int ) ;
 scalar_t__ driver_state ;
 int help_progname ;
 scalar_t__ isalnum (char const) ;
 int printf (char*,char*) ;

int Unlink(const char **args)
{
 ULONG target_min = TARGET_NONE;
 ULONG target_max = TARGET_NONE;
 HANDLE hDevice;
 DWORD ret;

 while (args && *args) {
  if ((isalnum(**args) || **args == '*') &&
   (*(*args + 1) == ':' || *(*args + 1) == '\0')) {

   if (target_min != TARGET_NONE) {
    PrintMessage(MSG_DUPLICATE_ARGS, *args);
    return VFD_NG;
   }

   if (**args == '*') {
    target_min = '0';
    target_max = '0' + VFD_MAXIMUM_DEVICES;
   }
   else {
    target_min = **args;
    target_max = target_min + 1;
   }
  }
  else {
   PrintMessage(MSG_UNKNOWN_OPTION, *args);
   PrintMessage(MSG_HINT_ULINK, help_progname);
   return VFD_NG;
  }

  args++;
 }

 if (target_min == TARGET_NONE) {

  target_min = '0';
  target_max = '1';
  PrintMessage(MSG_TARGET_NOTICE, target_min);
 }



 if (driver_state == VFD_NOT_INSTALLED) {
  PrintMessage(MSG_NOT_INSTALLED);
  return VFD_NG;
 }



 if (CheckDriver() != VFD_OK) {
  return VFD_NG;
 }



 if (driver_state != SERVICE_RUNNING) {
  PrintMessage(MSG_NOT_STARTED);
  return VFD_NG;
 }

 while (target_min < target_max) {
  ULONG number;

  hDevice = VfdOpenDevice(target_min);

  if (hDevice == INVALID_HANDLE_VALUE) {
   ret = GetLastError();
   PrintMessage(MSG_ACCESS_NG, target_min);
   printf("%s", SystemError(ret));
   target_min++;
   continue;
  }

  ret = VfdGetDeviceNumber(hDevice, &number);

  if (ret != ERROR_SUCCESS) {
   PrintMessage(MSG_ACCESS_NG, target_min);
   printf("%s", SystemError(ret));
   CloseHandle(hDevice);
   target_min++;
   continue;
  }

  VfdSetGlobalLink(hDevice, 0);
  VfdSetLocalLink(hDevice, 0);

  PrintDriveLetter(hDevice, number);

  CloseHandle(hDevice);

  target_min++;
 }

 return VFD_OK;
}
