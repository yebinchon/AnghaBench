
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int TCHAR ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 int HIWORD (scalar_t__) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LOWORD (scalar_t__) ;
 int MAX_PATH ;
 int MSG_ACCESS_NG ;
 int MSG_DRIVER_FILE ;
 int MSG_DRIVER_STATUS ;
 int MSG_DRIVER_VERSION ;
 int MSG_GET_CONFIG_NG ;
 int MSG_GET_VERSION_NG ;
 int MSG_NOT_INSTALLED ;
 int MSG_SHELLEXT_DISABLED ;
 int MSG_SHELLEXT_ENABLED ;
 int MSG_START_AUTO ;
 int MSG_START_BOOT ;
 int MSG_START_DEMAND ;
 int MSG_START_DISABLED ;
 int MSG_START_SYSTEM ;
 int MSG_START_TYPE ;
 int MSG_STATUS_CONT_P ;
 int MSG_STATUS_PAUSED ;
 int MSG_STATUS_PAUSE_P ;
 int MSG_STATUS_RUNNING ;
 int MSG_STATUS_START_P ;
 int MSG_STATUS_STOPPED ;
 int MSG_STATUS_STOP_P ;
 int MSG_UNKNOWN_LONG ;
 int PrintImageInfo (scalar_t__) ;
 int PrintMessage (int ,...) ;
 char* SystemError (scalar_t__) ;
 int UNREFERENCED_PARAMETER (char const**) ;
 int VFD_MAXIMUM_DEVICES ;
 int VFD_NG ;
 int VFD_NOT_INSTALLED ;
 int VFD_OK ;
 scalar_t__ VfdCheckDriverFile (int *,scalar_t__*) ;
 scalar_t__ VfdCheckHandlers () ;
 scalar_t__ VfdGetDriverConfig (int *,scalar_t__*) ;
 scalar_t__ VfdGetDriverVersion (scalar_t__,scalar_t__*) ;
 scalar_t__ VfdOpenDevice (int) ;
 int driver_state ;
 int printf (char*,...) ;

int Status(const char **args)
{
 HANDLE hDevice;
 TCHAR path[MAX_PATH];
 DWORD start_type;
 DWORD version;
 ULONG target;
 DWORD ret;

 UNREFERENCED_PARAMETER(args);

 if (driver_state == VFD_NOT_INSTALLED) {
  PrintMessage(MSG_NOT_INSTALLED);
 }
 else {



  ret = VfdGetDriverConfig(path, &start_type);

  if (ret != ERROR_SUCCESS) {
   PrintMessage(MSG_GET_CONFIG_NG);
   printf("%s", SystemError(ret));
   return VFD_NG;
  }



  PrintMessage(MSG_DRIVER_FILE, path);


  version = 0;

  if (driver_state == 132) {

   hDevice = VfdOpenDevice(0);

   if (hDevice != INVALID_HANDLE_VALUE) {
    ret = VfdGetDriverVersion(hDevice, &version);

    CloseHandle(hDevice);
   }

  }

  if (version == 0) {
   ret = VfdCheckDriverFile(path, &version);
  }

  if (ret == ERROR_SUCCESS) {
   PrintMessage(MSG_DRIVER_VERSION,
    HIWORD(version) & 0x7fff,
    LOWORD(version),
    (version & 0x80000000) ? "(debug)" : "");
  }
  else {
   PrintMessage(MSG_GET_VERSION_NG);
   printf("%s", SystemError(ret));
  }




  PrintMessage(MSG_START_TYPE);

  switch (start_type) {
  case 139:
   PrintMessage(MSG_START_AUTO);
   break;

  case 138:
   PrintMessage(MSG_START_BOOT);
   break;

  case 136:
   PrintMessage(MSG_START_DEMAND);
   break;

  case 135:
   PrintMessage(MSG_START_DISABLED);
   break;

  case 128 :
   PrintMessage(MSG_START_SYSTEM);
   break;

  default:
   PrintMessage(MSG_UNKNOWN_LONG, start_type);
   break;
  }



  PrintMessage(MSG_DRIVER_STATUS);

  switch (driver_state) {
  case 130:
   PrintMessage(MSG_STATUS_STOPPED);
   break;

  case 131:
   PrintMessage(MSG_STATUS_START_P);
   break;

  case 129:
   PrintMessage(MSG_STATUS_STOP_P);
   break;

  case 132:
   PrintMessage(MSG_STATUS_RUNNING);
   break;

  case 137:
   PrintMessage(MSG_STATUS_CONT_P);
   break;

  case 133:
   PrintMessage(MSG_STATUS_PAUSE_P);
   break;

  case 134:
   PrintMessage(MSG_STATUS_PAUSED);
   break;

  default:
   PrintMessage(MSG_UNKNOWN_LONG, driver_state);
   break;
  }
 }



 printf("\n");

 if (VfdCheckHandlers() == ERROR_SUCCESS) {
  PrintMessage(MSG_SHELLEXT_ENABLED);
 }
 else {
  PrintMessage(MSG_SHELLEXT_DISABLED);
 }



 if (driver_state != 132) {
  return VFD_OK;
 }



 for (target = 0; target < VFD_MAXIMUM_DEVICES; target++) {
  HANDLE hDevice = VfdOpenDevice(target);

  if (hDevice == INVALID_HANDLE_VALUE) {
   ret = GetLastError();
   PrintMessage(MSG_ACCESS_NG, target + '0');
   printf("%s", SystemError(ret));
   return VFD_NG;
  }

  PrintImageInfo(hDevice);

  CloseHandle(hDevice);
 }

 return VFD_OK;
}
