
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PDEBUGGER_STATUS_BLOCK ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int DEBUGGER_STATUS_BLOCK ;


 int DeviceIoControl (int ,int ,int ,int,int *,int,int *,int *) ;
 int EINVAL ;
 int GetLastError () ;
 int memcpy (int ,int *,int) ;
 int printf (char*,int ) ;

int ioctl( HANDLE device, DWORD ioctrlcode, PDEBUGGER_STATUS_BLOCK psb)
{
  DEBUGGER_STATUS_BLOCK tsb;
  DWORD bytesreturned;
  if( !DeviceIoControl( device, ioctrlcode, psb, sizeof(DEBUGGER_STATUS_BLOCK),
   &tsb, sizeof(DEBUGGER_STATUS_BLOCK),&bytesreturned, ((void*)0)) ){
  printf("Error in DeviceIoControl: %ld\n", GetLastError());
  return -EINVAL;
  }
  else{
  memcpy( psb, &tsb, sizeof(DEBUGGER_STATUS_BLOCK) );
  }
  return 0;
}
