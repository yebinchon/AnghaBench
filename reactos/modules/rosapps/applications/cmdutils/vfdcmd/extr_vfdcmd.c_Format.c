
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ CheckDriver () ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int InputChar (int ,char*) ;
 int MSG_ACCESS_NG ;
 int MSG_DUPLICATE_ARGS ;
 int MSG_FORMAT_FORCE ;
 int MSG_FORMAT_NG ;
 int MSG_FORMAT_OK ;
 int MSG_FORMAT_QUIT ;
 int MSG_HINT_FORMAT ;
 int MSG_LOCK_NG ;
 int MSG_NOT_INSTALLED ;
 int MSG_NOT_STARTED ;
 int MSG_RETRY_FORCE_CANCEL ;
 int MSG_TARGET_NOTICE ;
 int MSG_UNKNOWN_OPTION ;
 int OPERATION_ASK ;
 int OPERATION_FORCE ;
 int OPERATION_QUIT ;
 int PrintMessage (int ,...) ;
 scalar_t__ SERVICE_RUNNING ;
 char* SystemError (scalar_t__) ;
 int TARGET_NONE ;
 int TRUE ;
 int VFD_NG ;
 scalar_t__ VFD_NOT_INSTALLED ;
 scalar_t__ VFD_OK ;
 scalar_t__ VfdDismountVolume (scalar_t__,int) ;
 scalar_t__ VfdFormatMedia (scalar_t__) ;
 scalar_t__ VfdGetMediaState (scalar_t__) ;
 scalar_t__ VfdOpenDevice (int ) ;
 int _stricmp (char const*,char*) ;
 scalar_t__ driver_state ;
 int help_progname ;
 scalar_t__ isalnum (char const) ;
 int printf (char*,char*) ;
 int toupper (char const) ;

int Format(const char **args)
{
 int mode = OPERATION_ASK;
 ULONG target = TARGET_NONE;
 HANDLE hDevice;
 DWORD ret;



 while (args && *args) {

  if (!_stricmp(*args, "/f") ||
   !_stricmp(*args, "/force")) {

   if (mode != OPERATION_ASK) {
    PrintMessage(MSG_DUPLICATE_ARGS, *args);
    return VFD_NG;
   }

   mode = OPERATION_FORCE;
  }
  else if (!_stricmp(*args, "/q") ||
   !_stricmp(*args, "/quit")) {

   if (mode != OPERATION_ASK) {
    PrintMessage(MSG_DUPLICATE_ARGS, *args);
    return VFD_NG;
   }

   mode = OPERATION_QUIT;
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
   PrintMessage(MSG_HINT_FORMAT, help_progname);
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



 ret = VfdGetMediaState(hDevice);

 if (ret != ERROR_SUCCESS) {
  PrintMessage(MSG_FORMAT_NG, target);
  printf("%s", SystemError(ret));

  CloseHandle(hDevice);
  return VFD_NG;
 }



retry:
 ret = VfdDismountVolume(
  hDevice, (mode == OPERATION_FORCE));

 if (ret == ERROR_ACCESS_DENIED) {

  PrintMessage(MSG_LOCK_NG, target);

  if (mode == OPERATION_FORCE) {
   PrintMessage(MSG_FORMAT_FORCE);
  }
  else if (mode == OPERATION_QUIT) {
   PrintMessage(MSG_FORMAT_QUIT);
   CloseHandle(hDevice);
   return VFD_NG;
  }
  else {
   int c = InputChar(MSG_RETRY_FORCE_CANCEL, "rfc");

   if (c == 'r') {
    goto retry;
   }
   else if (c == 'f') {
    VfdDismountVolume(hDevice, TRUE);
   }
   else {
    CloseHandle(hDevice);
    return VFD_NG;
   }
  }
 }
 else if (ret != ERROR_SUCCESS) {
  PrintMessage(MSG_LOCK_NG, target);
  CloseHandle(hDevice);
  return VFD_NG;
 }

 ret = VfdFormatMedia(hDevice);

 CloseHandle(hDevice);

 if (ret != ERROR_SUCCESS) {
  PrintMessage(MSG_FORMAT_NG, target);
  printf("%s", SystemError(ret));
  return VFD_NG;
 }



 PrintMessage(MSG_FORMAT_OK);

 return VFD_OK;
}
