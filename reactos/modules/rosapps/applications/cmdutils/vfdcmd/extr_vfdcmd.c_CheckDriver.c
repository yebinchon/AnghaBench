
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int MSG_WRONG_DRIVER ;
 int PrintMessage (int ) ;
 scalar_t__ SERVICE_RUNNING ;
 int VFD_NG ;
 int VFD_OK ;
 scalar_t__ VfdCheckDriverFile (char*,int *) ;
 scalar_t__ VfdGetDriverConfig (char*,int *) ;
 scalar_t__ VfdOpenDevice (int ) ;
 scalar_t__ driver_state ;

int CheckDriver()
{
 char path[MAX_PATH];
 DWORD start;



 if (VfdGetDriverConfig(path, &start) == ERROR_SUCCESS &&
  VfdCheckDriverFile(path, ((void*)0)) == ERROR_SUCCESS) {

  HANDLE hDevice;

  if (driver_state != SERVICE_RUNNING) {
   return VFD_OK;
  }



  hDevice = VfdOpenDevice(0);

  if (hDevice != INVALID_HANDLE_VALUE) {
   CloseHandle(hDevice);
   return VFD_OK;
  }
 }

 PrintMessage(MSG_WRONG_DRIVER);
 return VFD_NG;
}
