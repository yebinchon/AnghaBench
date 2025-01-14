
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* LPVOID ;
typedef scalar_t__ HMODULE ;


 void* COM_GetClassObject ;
 void* COM_GetMarshalSizeMax ;
 void* COM_GetPSClsid ;
 void* COM_MarshalInterface ;
 void* COM_MemAlloc ;
 void* COM_MemFree ;
 void* COM_ReleaseMarshalData ;
 void* COM_UnmarshalInterface ;
 scalar_t__ GetProcAddress (scalar_t__,char*) ;
 scalar_t__ LoadLibraryA (char*) ;
 scalar_t__ hOLE ;

__attribute__((used)) static HMODULE LoadCOM(void)
{
  if (hOLE) return hOLE;
  hOLE = LoadLibraryA("OLE32.DLL");
  if (!hOLE) return 0;
  COM_GetMarshalSizeMax = (LPVOID)GetProcAddress(hOLE, "CoGetMarshalSizeMax");
  COM_MarshalInterface = (LPVOID)GetProcAddress(hOLE, "CoMarshalInterface");
  COM_UnmarshalInterface = (LPVOID)GetProcAddress(hOLE, "CoUnmarshalInterface");
  COM_ReleaseMarshalData = (LPVOID)GetProcAddress(hOLE, "CoReleaseMarshalData");
  COM_GetClassObject = (LPVOID)GetProcAddress(hOLE, "CoGetClassObject");
  COM_GetPSClsid = (LPVOID)GetProcAddress(hOLE, "CoGetPSClsid");
  COM_MemAlloc = (LPVOID)GetProcAddress(hOLE, "CoTaskMemAlloc");
  COM_MemFree = (LPVOID)GetProcAddress(hOLE, "CoTaskMemFree");
  return hOLE;
}
