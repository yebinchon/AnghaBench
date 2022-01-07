
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int MSG_DRIVER_EXISTS ;
 int MSG_DUPLICATE_ARGS ;
 int MSG_GET_STAT_NG ;
 int MSG_HINT_INSTALL ;
 int MSG_INSTALL_NG ;
 int MSG_INSTALL_OK ;
 int MSG_UNKNOWN_OPTION ;
 int PrintMessage (int ,...) ;
 scalar_t__ SERVICE_AUTO_START ;
 scalar_t__ SERVICE_DEMAND_START ;
 char* SystemError (scalar_t__) ;
 int VFD_NG ;
 scalar_t__ VFD_NOT_INSTALLED ;
 int VFD_OK ;
 scalar_t__ VfdGetDriverState (scalar_t__*) ;
 scalar_t__ VfdInstallDriver (char const*,scalar_t__) ;
 int _stricmp (char const*,char*) ;
 scalar_t__ driver_state ;
 int help_progname ;
 int printf (char*,char*) ;

int Install(const char **args)
{
 const char *install_path = ((void*)0);
 DWORD start_type = SERVICE_DEMAND_START;

 DWORD ret;



 while (args && *args) {

  if (!_stricmp(*args, "/a") ||
   !_stricmp(*args, "/auto")) {

   if (start_type != SERVICE_DEMAND_START) {
    PrintMessage(MSG_DUPLICATE_ARGS, *args);
    return VFD_NG;
   }
   start_type = SERVICE_AUTO_START;
  }
  else if (**args == '/') {
   PrintMessage(MSG_UNKNOWN_OPTION, *args);
   PrintMessage(MSG_HINT_INSTALL, help_progname);
   return VFD_NG;
  }
  else {
   if (install_path) {
    PrintMessage(MSG_DUPLICATE_ARGS, "path");
    return VFD_NG;
   }

   install_path = *args;
  }

  args++;
 }



 if (driver_state != VFD_NOT_INSTALLED) {
  PrintMessage(MSG_DRIVER_EXISTS);
  return VFD_NG;
 }



 ret = VfdInstallDriver(
  install_path,
  start_type);

 if (ret != ERROR_SUCCESS) {
  PrintMessage(MSG_INSTALL_NG);
  printf("%s", SystemError(ret));
  return VFD_NG;
 }



 ret = VfdGetDriverState(&driver_state);

 if (ret != ERROR_SUCCESS) {
  PrintMessage(MSG_GET_STAT_NG);
  printf("%s", SystemError(ret));
  return VFD_NG;
 }



 PrintMessage(MSG_INSTALL_OK);

 return VFD_OK;
}
