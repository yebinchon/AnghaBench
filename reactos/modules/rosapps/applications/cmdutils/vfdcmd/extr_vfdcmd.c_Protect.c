
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ CheckDriver () ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ ERROR_WRITE_PROTECT ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MSG_ACCESS_NG ;
 int MSG_DUPLICATE_ARGS ;
 int MSG_GET_MEDIA_NG ;
 int MSG_HINT_PROTECT ;
 int MSG_MEDIA_PROTECTED ;
 int MSG_MEDIA_WRITABLE ;
 int MSG_NOT_INSTALLED ;
 int MSG_NOT_STARTED ;
 int MSG_PROTECT_NG ;
 int MSG_TARGET_NOTICE ;
 int MSG_UNKNOWN_OPTION ;
 scalar_t__ PROTECT_NONE ;
 scalar_t__ PROTECT_OFF ;
 scalar_t__ PROTECT_ON ;
 int PrintMessage (int ,...) ;
 scalar_t__ SERVICE_RUNNING ;
 char* SystemError (scalar_t__) ;
 scalar_t__ TARGET_NONE ;
 int VFD_NG ;
 scalar_t__ VFD_NOT_INSTALLED ;
 scalar_t__ VFD_OK ;
 scalar_t__ VfdGetMediaState (scalar_t__) ;
 scalar_t__ VfdOpenDevice (scalar_t__) ;
 scalar_t__ VfdWriteProtect (scalar_t__,int) ;
 scalar_t__ _stricmp (char const*,char*) ;
 scalar_t__ driver_state ;
 int help_progname ;
 scalar_t__ isalnum (char const) ;
 int printf (char*,char*) ;
 scalar_t__ toupper (char const) ;

int Protect(const char **args)
{



 ULONG protect = 0;
 ULONG target = TARGET_NONE;
 HANDLE hDevice;
 DWORD ret;



 while (args && *args) {



  if (_stricmp(*args, "/on") == 0) {

   if (protect) {
    PrintMessage(MSG_DUPLICATE_ARGS, *args);
    return VFD_NG;
   }

   protect = 1;
  }
  else if (_stricmp(*args, "/off") == 0) {

   if (protect) {
    PrintMessage(MSG_DUPLICATE_ARGS, *args);
    return VFD_NG;
   }

   protect = 2;
  }
  else if (isalnum(**args)) {

   if (target != TARGET_NONE) {
    PrintMessage(MSG_DUPLICATE_ARGS, *args);
    return VFD_NG;
   }

   target = toupper(**args);
  }
  else {
   PrintMessage(MSG_UNKNOWN_OPTION, *args);
   PrintMessage(MSG_HINT_PROTECT, help_progname);
   return VFD_NG;
  }

  args++;
 }

 if (target == TARGET_NONE) {
  target = '0';
  PrintMessage(MSG_TARGET_NOTICE, target);
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



 hDevice = VfdOpenDevice(target);

 if (hDevice == INVALID_HANDLE_VALUE) {
  ret = GetLastError();
  PrintMessage(MSG_ACCESS_NG, target);
  printf("%s", SystemError(ret));
  return VFD_NG;
 }

 if (protect) {


  ret = VfdWriteProtect(
   hDevice, (protect == 1));

  if (ret != ERROR_SUCCESS) {
   PrintMessage(MSG_PROTECT_NG, target);
   printf("%s", SystemError(ret));

   CloseHandle(hDevice);
   return VFD_NG;
  }
 }



 ret = VfdGetMediaState(hDevice);

 CloseHandle(hDevice);

 if (ret == ERROR_SUCCESS) {
  PrintMessage(MSG_MEDIA_WRITABLE);
 }
 else if (ret == ERROR_WRITE_PROTECT) {
  PrintMessage(MSG_MEDIA_PROTECTED);
 }
 else {
  PrintMessage(MSG_GET_MEDIA_NG);
  printf("%s", SystemError(ret));
  return VFD_NG;
 }

 return VFD_OK;
}
