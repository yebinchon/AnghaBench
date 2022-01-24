#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* LPVOID ;
typedef  scalar_t__ HMODULE ;

/* Variables and functions */
 void* COM_GetClassObject ; 
 void* COM_GetMarshalSizeMax ; 
 void* COM_GetPSClsid ; 
 void* COM_MarshalInterface ; 
 void* COM_MemAlloc ; 
 void* COM_MemFree ; 
 void* COM_ReleaseMarshalData ; 
 void* COM_UnmarshalInterface ; 
 scalar_t__ FUNC0 (scalar_t__,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ hOLE ; 

__attribute__((used)) static HMODULE FUNC2(void)
{
  if (hOLE) return hOLE;
  hOLE = FUNC1("OLE32.DLL");
  if (!hOLE) return 0;
  COM_GetMarshalSizeMax  = (LPVOID)FUNC0(hOLE, "CoGetMarshalSizeMax");
  COM_MarshalInterface   = (LPVOID)FUNC0(hOLE, "CoMarshalInterface");
  COM_UnmarshalInterface = (LPVOID)FUNC0(hOLE, "CoUnmarshalInterface");
  COM_ReleaseMarshalData = (LPVOID)FUNC0(hOLE, "CoReleaseMarshalData");
  COM_GetClassObject     = (LPVOID)FUNC0(hOLE, "CoGetClassObject");
  COM_GetPSClsid         = (LPVOID)FUNC0(hOLE, "CoGetPSClsid");
  COM_MemAlloc = (LPVOID)FUNC0(hOLE, "CoTaskMemAlloc");
  COM_MemFree  = (LPVOID)FUNC0(hOLE, "CoTaskMemFree");
  return hOLE;
}