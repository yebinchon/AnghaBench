
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ CheckDriver () ;
 scalar_t__ ERROR_SUCCESS ;
 int MSG_CONFIG_NG ;
 int MSG_CONFIG_OK ;
 int MSG_DUPLICATE_ARGS ;
 int MSG_HINT_CONFIG ;
 int MSG_NOT_INSTALLED ;
 int MSG_UNKNOWN_OPTION ;
 int PrintMessage (int ,...) ;
 scalar_t__ SERVICE_AUTO_START ;
 scalar_t__ SERVICE_DEMAND_START ;
 scalar_t__ SERVICE_DISABLED ;
 char* SystemError (scalar_t__) ;
 int VFD_NG ;
 scalar_t__ VFD_NOT_INSTALLED ;
 scalar_t__ VFD_OK ;
 scalar_t__ VfdConfigDriver (scalar_t__) ;
 int _stricmp (char const*,char*) ;
 scalar_t__ driver_state ;
 int help_progname ;
 int printf (char*,char*) ;

int Config(const char **args)
{
 DWORD start_type = SERVICE_DISABLED;
 DWORD ret;

 while (args && *args) {
  if (!_stricmp(*args, "/a") ||
   !_stricmp(*args, "/auto")) {

   if (start_type != SERVICE_DISABLED) {
    PrintMessage(MSG_DUPLICATE_ARGS, *args);
    return VFD_NG;
   }

   start_type = SERVICE_AUTO_START;
  }
  else if (!_stricmp(*args, "/m") ||
   !_stricmp(*args, "/manual")) {

   if (start_type != SERVICE_DISABLED) {
    PrintMessage(MSG_DUPLICATE_ARGS, *args);
    return VFD_NG;
   }

   start_type = SERVICE_DEMAND_START;
  }
  else {
   PrintMessage(MSG_UNKNOWN_OPTION, *args);
   PrintMessage(MSG_HINT_CONFIG, help_progname);
   return VFD_NG;
  }

  args++;
 }

 if (start_type == SERVICE_DISABLED) {

  PrintMessage(MSG_HINT_CONFIG, help_progname);
  return VFD_NG;
 }



 if (driver_state == VFD_NOT_INSTALLED) {
  PrintMessage(MSG_NOT_INSTALLED);
  return VFD_NG;
 }



 if (CheckDriver() != VFD_OK) {
  return VFD_NG;
 }



 ret = VfdConfigDriver(start_type);

 if (ret != ERROR_SUCCESS) {
  PrintMessage(MSG_CONFIG_NG);
  printf("%s", SystemError(ret));
  return VFD_NG;
 }



 PrintMessage(MSG_CONFIG_OK);

 return VFD_OK;
}
