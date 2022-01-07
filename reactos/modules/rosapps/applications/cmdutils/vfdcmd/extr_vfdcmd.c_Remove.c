
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int InputChar (int ,char*) ;
 int MSG_DUPLICATE_ARGS ;
 int MSG_GET_STAT_NG ;
 int MSG_HINT_REMOVE ;
 int MSG_NOT_INSTALLED ;
 int MSG_REMOVE_FORCE ;
 int MSG_REMOVE_NG ;
 int MSG_REMOVE_OK ;
 int MSG_REMOVE_PENDING ;
 int MSG_REMOVE_QUIT ;
 int MSG_REMOVE_WARN ;
 int MSG_RETRY_FORCE_CANCEL ;
 int MSG_UNKNOWN_OPTION ;
 int OPERATION_ASK ;
 int OPERATION_FORCE ;
 int OPERATION_QUIT ;
 int PrintMessage (int ,...) ;
 scalar_t__ SERVICE_RUNNING ;
 int Sleep (int) ;
 scalar_t__ Stop (char const**) ;
 char* SystemError (scalar_t__) ;
 int VFD_NG ;
 scalar_t__ VFD_NOT_INSTALLED ;
 scalar_t__ VFD_OK ;
 scalar_t__ VfdGetDriverState (scalar_t__*) ;
 scalar_t__ VfdRemoveDriver () ;
 int _stricmp (char const*,char*) ;
 scalar_t__ driver_state ;
 int help_progname ;
 int printf (char*,char*) ;

int Remove(const char **args)
{
 int mode = OPERATION_ASK;
 const char *stop_params[] = { ((void*)0), ((void*)0) };
 DWORD ret;
 int idx;



 while (args && *args) {

  if (!_stricmp(*args, "/f") ||
   !_stricmp(*args, "/force")) {

   if (mode != OPERATION_ASK) {
    PrintMessage(MSG_DUPLICATE_ARGS, *args);
    return VFD_NG;
   }

   mode = OPERATION_FORCE;
   stop_params[0] = *args;
  }
  else if (!_stricmp(*args, "/q") ||
   !_stricmp(*args, "/quit")) {

   if (mode != OPERATION_ASK) {
    PrintMessage(MSG_DUPLICATE_ARGS, *args);
    return VFD_NG;
   }

   mode = OPERATION_QUIT;
   stop_params[0] = *args;
  }
  else {
   PrintMessage(MSG_UNKNOWN_OPTION, *args);
   PrintMessage(MSG_HINT_REMOVE, help_progname);
   return VFD_NG;
  }

  args++;
 }



 if (driver_state == VFD_NOT_INSTALLED) {
  PrintMessage(MSG_NOT_INSTALLED);
  return VFD_NG;
 }



 if (driver_state == SERVICE_RUNNING) {



  while (Stop(stop_params) != VFD_OK) {



   if (mode == OPERATION_FORCE) {
    PrintMessage(MSG_REMOVE_FORCE);
    break;
   }
   else if (mode == OPERATION_QUIT) {
    PrintMessage(MSG_REMOVE_QUIT);
    return VFD_NG;
   }
   else {
    int c;

    PrintMessage(MSG_REMOVE_WARN);

    c = InputChar(MSG_RETRY_FORCE_CANCEL, "rfc");

    if (c == 'f') {
     break;
    }
    else if (c == 'c') {
     return VFD_NG;
    }
   }
  }
 }



 ret = VfdRemoveDriver();

 if (ret != ERROR_SUCCESS) {
  PrintMessage(MSG_REMOVE_NG);
  printf("%s", SystemError(ret));
  return VFD_NG;
 }



 for (idx = 0; idx < 10; idx++) {

  ret = VfdGetDriverState(&driver_state);

  if (ret != ERROR_SUCCESS) {
   PrintMessage(MSG_GET_STAT_NG);
   printf("%s", SystemError(ret));
   return VFD_NG;
  }

  if (driver_state == VFD_NOT_INSTALLED) {
   break;
  }

  Sleep(300);
 }

 if (driver_state != VFD_NOT_INSTALLED) {
  PrintMessage(MSG_REMOVE_PENDING);
  return VFD_NG;
 }



 PrintMessage(MSG_REMOVE_OK);

 return VFD_OK;
}
