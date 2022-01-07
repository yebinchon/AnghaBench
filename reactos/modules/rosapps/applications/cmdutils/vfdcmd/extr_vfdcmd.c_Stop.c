
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ Close (char const**) ;
 scalar_t__ ERROR_SUCCESS ;
 int InputChar (int ,char*) ;
 int MSG_DUPLICATE_ARGS ;
 int MSG_HINT_STOP ;
 int MSG_NOT_INSTALLED ;
 int MSG_NOT_STARTED ;
 int MSG_RETRY_FORCE_CANCEL ;
 int MSG_STOP_FORCE ;
 int MSG_STOP_NG ;
 int MSG_STOP_OK ;
 int MSG_STOP_PENDING ;
 int MSG_STOP_QUIT ;
 int MSG_STOP_WARN ;
 int MSG_UNKNOWN_OPTION ;
 int OPERATION_ASK ;
 int OPERATION_FORCE ;
 int OPERATION_QUIT ;
 int PrintMessage (int ,...) ;
 scalar_t__ SERVICE_RUNNING ;
 scalar_t__ SERVICE_STOPPED ;
 char* SystemError (scalar_t__) ;
 int VFD_NG ;
 scalar_t__ VFD_NOT_INSTALLED ;
 scalar_t__ VFD_OK ;
 scalar_t__ VfdStopDriver (scalar_t__*) ;
 int _stricmp (char const*,char*) ;
 scalar_t__ driver_state ;
 int help_progname ;
 int printf (char*,char*) ;

int Stop(const char **args)
{
 int mode = OPERATION_ASK;
 const char *close_params[] = { "*", ((void*)0), ((void*)0) };
 DWORD ret;

 while (args && *args) {
  if (!_stricmp(*args, "/f") ||
   !_stricmp(*args, "/force")) {

   if (mode != OPERATION_ASK) {
    PrintMessage(MSG_DUPLICATE_ARGS, *args);
    return VFD_NG;
   }

   mode = OPERATION_FORCE;


   close_params[1] = *args;
  }
  else if (!_stricmp(*args, "/q") ||
   !_stricmp(*args, "/quit")) {

   if (mode != OPERATION_ASK) {
    PrintMessage(MSG_DUPLICATE_ARGS, *args);
    return VFD_NG;
   }

   mode = OPERATION_QUIT;


   close_params[1] = *args;
  }
  else {
   PrintMessage(MSG_UNKNOWN_OPTION, *args);
   PrintMessage(MSG_HINT_STOP, help_progname);
   return VFD_NG;
  }

  args++;
 }



 if (driver_state == VFD_NOT_INSTALLED) {
  PrintMessage(MSG_NOT_INSTALLED);
  return VFD_NG;
 }



 if (driver_state == SERVICE_STOPPED) {
  PrintMessage(MSG_NOT_STARTED);
  return VFD_NG;
 }



 if (driver_state == SERVICE_RUNNING) {



  while (Close(close_params) != VFD_OK) {



   if (mode == OPERATION_FORCE) {
    PrintMessage(MSG_STOP_FORCE);
    break;
   }
   else if (mode == OPERATION_QUIT) {
    PrintMessage(MSG_STOP_QUIT);
    return VFD_NG;
   }
   else {
    int c;

    PrintMessage(MSG_STOP_WARN);

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



 ret = VfdStopDriver(&driver_state);

 if (ret != ERROR_SUCCESS) {
  PrintMessage(MSG_STOP_NG);
  printf("%s", SystemError(ret));
  return VFD_NG;
 }

 if (driver_state != SERVICE_STOPPED) {
  PrintMessage(MSG_STOP_PENDING);
  return VFD_NG;
 }



 PrintMessage(MSG_STOP_OK);

 return VFD_OK;
}
