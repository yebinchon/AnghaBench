
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ ILockBytes_iface; int * pwcsName; int flProtect; scalar_t__ hfile; } ;
typedef int LPCWSTR ;
typedef TYPE_1__ ILockBytes ;
typedef int HRESULT ;
typedef scalar_t__ HANDLE ;
typedef TYPE_2__ FileLockBytesImpl ;
typedef int DWORD ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int FileLockBytesImpl_Vtbl ;
 int GetFullPathNameW (int ,int,int *,int *) ;
 int GetProcessHeap () ;
 int GetProtectMode (int ) ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int S_OK ;
 int lstrcpyW (int *,int *) ;
 int lstrcpynW (int *,int ,int) ;
 int lstrlenW (int *) ;

HRESULT FileLockBytesImpl_Construct(HANDLE hFile, DWORD openFlags, LPCWSTR pwcsName, ILockBytes **pLockBytes)
{
  FileLockBytesImpl *This;
  WCHAR fullpath[MAX_PATH];

  if (hFile == INVALID_HANDLE_VALUE)
    return E_FAIL;

  This = HeapAlloc(GetProcessHeap(), 0, sizeof(FileLockBytesImpl));

  if (!This)
    return E_OUTOFMEMORY;

  This->ILockBytes_iface.lpVtbl = &FileLockBytesImpl_Vtbl;
  This->ref = 1;
  This->hfile = hFile;
  This->flProtect = GetProtectMode(openFlags);

  if(pwcsName) {
    if (!GetFullPathNameW(pwcsName, MAX_PATH, fullpath, ((void*)0)))
    {
      lstrcpynW(fullpath, pwcsName, MAX_PATH);
    }
    This->pwcsName = HeapAlloc(GetProcessHeap(), 0,
                              (lstrlenW(fullpath)+1)*sizeof(WCHAR));
    if (!This->pwcsName)
    {
       HeapFree(GetProcessHeap(), 0, This);
       return E_OUTOFMEMORY;
    }
    lstrcpyW(This->pwcsName, fullpath);
  }
  else
    This->pwcsName = ((void*)0);

  *pLockBytes = &This->ILockBytes_iface;

  return S_OK;
}
