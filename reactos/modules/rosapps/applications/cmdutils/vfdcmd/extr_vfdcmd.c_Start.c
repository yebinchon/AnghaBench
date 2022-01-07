
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ CheckDriver () ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ Install (int *) ;
 int MSG_ALREADY_RUNNING ;
 int MSG_START_NG ;
 int MSG_START_OK ;
 int PrintMessage (int ) ;
 scalar_t__ SERVICE_RUNNING ;
 char* SystemError (scalar_t__) ;
 int UNREFERENCED_PARAMETER (char const**) ;
 int VFD_NG ;
 scalar_t__ VFD_NOT_INSTALLED ;
 scalar_t__ VFD_OK ;
 scalar_t__ VfdStartDriver (scalar_t__*) ;
 scalar_t__ driver_state ;
 int printf (char*,char*) ;

int Start(const char **args)
{
 DWORD ret;

 UNREFERENCED_PARAMETER(args);



 if (driver_state == VFD_NOT_INSTALLED &&
  Install(((void*)0)) != VFD_OK) {
  return VFD_NG;
 }



 if (CheckDriver() != VFD_OK) {
  return VFD_NG;
 }



 if (driver_state == SERVICE_RUNNING) {
  PrintMessage(MSG_ALREADY_RUNNING);
  return VFD_NG;
 }



 ret = VfdStartDriver(&driver_state);

 if (ret != ERROR_SUCCESS) {
  PrintMessage(MSG_START_NG);
  printf("%s", SystemError(ret));
  return VFD_NG;
 }



 PrintMessage(MSG_START_OK);

 return VFD_OK;
}
