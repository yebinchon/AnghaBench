
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VFD_MEDIA ;
typedef int VFD_FLAGS ;
typedef scalar_t__ ULONG ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 int ERROR_ACCESS_DENIED ;
 int ERROR_NOT_READY ;
 int ERROR_SUCCESS ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ IS_WINDOWS_NT () ;
 char InputChar (int ,char*) ;
 int MSG_ACCESS_NG ;
 int MSG_CLOSE_CONFIRM ;
 int MSG_CLOSE_FORCE ;
 int MSG_CLOSE_NG ;
 int MSG_CLOSE_OK ;
 int MSG_CLOSE_QUIT ;
 int MSG_DUPLICATE_ARGS ;
 int MSG_HINT_CLOSE ;
 int MSG_LOCK_NG ;
 int MSG_MEDIA_MODIFIED ;
 int MSG_NOT_INSTALLED ;
 int MSG_NOT_STARTED ;
 int MSG_RETRY_CANCEL ;
 int MSG_RETRY_FORCE_CANCEL ;
 int MSG_TARGET_NOTICE ;
 int MSG_UNKNOWN_OPTION ;
 scalar_t__ OPERATION_ASK ;
 scalar_t__ OPERATION_FORCE ;
 scalar_t__ OPERATION_QUIT ;
 int PrintMessage (int ,...) ;
 scalar_t__ SERVICE_RUNNING ;
 char* SystemError (int ) ;
 scalar_t__ TARGET_NONE ;
 int TRUE ;
 int VFD_FLAG_DATA_MODIFIED ;
 scalar_t__ VFD_MAXIMUM_DEVICES ;
 int VFD_MEDIA_NONE ;
 int VFD_NG ;
 scalar_t__ VFD_NOT_INSTALLED ;
 int VFD_OK ;
 int VfdCloseImage (scalar_t__,int) ;
 int VfdGetImageInfo (scalar_t__,int *,int *,int *,int*,int *,int *) ;
 scalar_t__ VfdOpenDevice (scalar_t__) ;
 int _stricmp (char const*,char*) ;
 scalar_t__ driver_state ;
 scalar_t__ help_progname ;
 scalar_t__ isalnum (char const) ;
 int printf (char*,char*) ;
 scalar_t__ toupper (char const) ;

int Close(const char **args)
{
 ULONG mode = OPERATION_ASK;

 ULONG target_min = TARGET_NONE;
 ULONG target_max = TARGET_NONE;
 HANDLE hDevice;

 VFD_MEDIA media_type;
 VFD_FLAGS media_flags;

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
  else if ((isalnum(**args) || **args == '*') &&
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
    target_min = toupper(**args);
    target_max = target_min + 1;
   }
  }
  else {
   PrintMessage(MSG_UNKNOWN_OPTION, *args);
   PrintMessage(MSG_HINT_CLOSE, help_progname);
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



 if (driver_state != SERVICE_RUNNING) {
  PrintMessage(MSG_NOT_STARTED);
  return VFD_NG;
 }



 while (target_min < target_max) {



  hDevice = VfdOpenDevice(target_min);

  if (hDevice == INVALID_HANDLE_VALUE) {
   ret = GetLastError();

   PrintMessage(MSG_ACCESS_NG, target_min);
   printf("%s", SystemError(ret));

   if (mode != OPERATION_FORCE) {
    return VFD_NG;
   }

   target_min++;
   continue;
  }



  ret = VfdGetImageInfo(hDevice, ((void*)0), ((void*)0),
   &media_type, &media_flags, ((void*)0), ((void*)0));

  if (ret != ERROR_SUCCESS) {
   PrintMessage(MSG_ACCESS_NG, target_min);
   printf("%s", SystemError(ret));

   CloseHandle(hDevice);

   if (mode != OPERATION_FORCE) {
    return VFD_NG;
   }

   target_min++;
   continue;
  }

  if (media_type == VFD_MEDIA_NONE) {



   CloseHandle(hDevice);
   target_min++;
   continue;
  }

  if (media_flags & VFD_FLAG_DATA_MODIFIED) {



   PrintMessage(MSG_MEDIA_MODIFIED, target_min);

   if (mode == OPERATION_FORCE) {
    PrintMessage(MSG_CLOSE_FORCE);
   }
   else if (mode == OPERATION_QUIT) {
    PrintMessage(MSG_CLOSE_QUIT);
    CloseHandle(hDevice);
    return VFD_NG;
   }
   else {
    if (InputChar(MSG_CLOSE_CONFIRM, "yn") == 'n') {
     CloseHandle(hDevice);
     return VFD_NG;
    }
   }
  }

retry:
  ret = VfdCloseImage(
   hDevice, (mode == OPERATION_FORCE));

  if (ret == ERROR_ACCESS_DENIED) {

   PrintMessage(MSG_LOCK_NG, target_min);

   if (mode == OPERATION_QUIT) {
    CloseHandle(hDevice);
    return VFD_NG;
   }
   else if (mode == OPERATION_ASK) {

    int c;

    if (IS_WINDOWS_NT()) {
     c = InputChar(MSG_RETRY_CANCEL, "rc");
    }
    else {
     c = InputChar(MSG_RETRY_FORCE_CANCEL, "rfc");
    }

    if (c == 'f') {
     ret = VfdCloseImage(hDevice, TRUE);
    }
    else if (c == 'c') {
     CloseHandle(hDevice);
     return VFD_NG;
    }
    else {
     goto retry;
    }
   }
  }

  CloseHandle(hDevice);

  if (ret == ERROR_SUCCESS) {
   PrintMessage(MSG_CLOSE_OK, target_min);
  }
  else if (ret != ERROR_NOT_READY) {
   PrintMessage(MSG_CLOSE_NG, target_min);
   printf("%s", SystemError(ret));

   if (mode != OPERATION_FORCE) {
    return VFD_NG;
   }
  }

  target_min++;
 }

 return VFD_OK;
}
