
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PSP_DEVINFO_DATA ;
typedef int PDWORD ;
typedef scalar_t__ PBYTE ;
typedef int HDEVINFO ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int ERROR_INVALID_DATA ;
 scalar_t__ FALSE ;
 int GetLastError () ;
 int SetLastError (int ) ;
 scalar_t__ SetupDiGetDeviceRegistryPropertyW (int ,int ,int ,int ,scalar_t__,int ,int ) ;
 scalar_t__ wPropertyBuffer ;
 int walloc (scalar_t__,int ) ;
 scalar_t__ wchar_to_utf8_no_alloc (scalar_t__,char*,int ) ;
 int wfree (scalar_t__) ;

__attribute__((used)) static __inline BOOL SetupDiGetDeviceRegistryPropertyU(HDEVINFO DeviceInfoSet, PSP_DEVINFO_DATA DeviceInfoData,
 DWORD Property, PDWORD PropertyRegDataType, PBYTE PropertyBuffer, DWORD PropertyBufferSize, PDWORD RequiredSize)
{
 BOOL ret = FALSE;
 DWORD err = ERROR_INVALID_DATA;

 walloc(PropertyBuffer, PropertyBufferSize);

 ret = SetupDiGetDeviceRegistryPropertyW(DeviceInfoSet, DeviceInfoData, Property,
  PropertyRegDataType, (PBYTE)wPropertyBuffer, PropertyBufferSize, RequiredSize);
 err = GetLastError();
 if ((ret != 0) && (wchar_to_utf8_no_alloc(wPropertyBuffer,
  (char*)(uintptr_t)PropertyBuffer, PropertyBufferSize) == 0)) {
  err = GetLastError();
  ret = FALSE;
 }
 wfree(PropertyBuffer);
 SetLastError(err);
 return ret;
}
