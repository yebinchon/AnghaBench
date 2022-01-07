
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_PATH_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 int MSG_GET_SHELLEXT_NG ;
 int MSG_HINT_SHELL ;
 int MSG_SET_SHELLEXT_NG ;
 int MSG_SHELLEXT_DISABLED ;
 int MSG_SHELLEXT_ENABLED ;
 int MSG_UNKNOWN_OPTION ;
 int PrintMessage (int ,...) ;
 char* SystemError (scalar_t__) ;
 int VFD_NG ;
 int VFD_OK ;
 scalar_t__ VfdCheckHandlers () ;
 scalar_t__ VfdRegisterHandlers () ;
 scalar_t__ VfdUnregisterHandlers () ;
 scalar_t__ _stricmp (char const*,char*) ;
 int help_progname ;
 int printf (char*,char*) ;

int Shell(const char **args)
{
 DWORD ret;

 ret = VfdCheckHandlers();

 if (ret != ERROR_SUCCESS &&
  ret != ERROR_PATH_NOT_FOUND &&
  ret != ERROR_FILE_NOT_FOUND) {
  PrintMessage(MSG_GET_SHELLEXT_NG);
  printf("%s", SystemError(ret));
  return VFD_NG;
 }

 if (args && *args) {
  if (_stricmp(*args, "/on") == 0) {
   if (ret != ERROR_SUCCESS) {
    ret = VfdRegisterHandlers();

    if (ret != ERROR_SUCCESS) {
     PrintMessage(MSG_SET_SHELLEXT_NG);
     printf("%s", SystemError(ret));
     return VFD_NG;
    }
   }
  }
  else if (_stricmp(*args, "/off") == 0) {
   if (ret == ERROR_SUCCESS) {
    ret = VfdUnregisterHandlers();

    if (ret != ERROR_SUCCESS) {
     PrintMessage(MSG_SET_SHELLEXT_NG);
     printf("%s", SystemError(ret));
     return VFD_NG;
    }
   }
  }
  else {
   PrintMessage(MSG_UNKNOWN_OPTION, *args);
   PrintMessage(MSG_HINT_SHELL, help_progname);
   return VFD_NG;
  }

  ret = VfdCheckHandlers();
 }

 if (ret == ERROR_PATH_NOT_FOUND ||
  ret == ERROR_FILE_NOT_FOUND) {
  PrintMessage(MSG_SHELLEXT_DISABLED);
 }
 else if (ret == ERROR_SUCCESS) {
  PrintMessage(MSG_SHELLEXT_ENABLED);
 }
 else {
  PrintMessage(MSG_GET_SHELLEXT_NG);
  printf("%s", SystemError(ret));
  return VFD_NG;
 }

 return VFD_OK;
}
