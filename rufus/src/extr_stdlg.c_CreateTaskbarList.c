
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int HRESULT ;
typedef int BOOL ;


 int CLSCTX_ALL ;
 int CLSID_TaskbarList ;
 int CoCreateInstance (int *,int *,int ,int *,int ) ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int IID_ITaskbarList3 ;
 int TRUE ;
 int * ptbl ;
 int uprintf (char*,int ) ;

BOOL CreateTaskbarList(void)
{
 HRESULT hr;

 hr = CoCreateInstance(&CLSID_TaskbarList, ((void*)0), CLSCTX_ALL, &IID_ITaskbarList3, (LPVOID)&ptbl);
 if (FAILED(hr)) {
  uprintf("CoCreateInstance for TaskbarList failed: error %X\n", hr);
  ptbl = ((void*)0);
  return FALSE;
 }
 return TRUE;
}
