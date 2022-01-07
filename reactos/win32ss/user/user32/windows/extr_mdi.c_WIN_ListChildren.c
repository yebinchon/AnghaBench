
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;
typedef scalar_t__ HWND ;
typedef int HANDLE ;
typedef int DWORD ;


 int ERROR_NOT_ENOUGH_MEMORY ;
 int FALSE ;
 int GetProcessHeap () ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__*) ;
 int NT_SUCCESS (int ) ;
 int NtUserBuildHwndList (int *,scalar_t__,int ,int ,int ,scalar_t__*,int*) ;
 int SetLastError (int ) ;

HWND* WIN_ListChildren (HWND hWndparent)
{

  DWORD dwCount = 0;
  HWND* pHwnd = ((void*)0);
  HANDLE hHeap;
  NTSTATUS Status;

  Status = NtUserBuildHwndList ( ((void*)0), hWndparent, FALSE, 0, 0, ((void*)0), &dwCount );

  if ( !NT_SUCCESS( Status ) )
    return 0;


  hHeap = GetProcessHeap();

  pHwnd = HeapAlloc ( hHeap, 0, sizeof(HWND)*(dwCount+1) );
  if ( !pHwnd )
    {
      SetLastError ( ERROR_NOT_ENOUGH_MEMORY );
      return 0;
    }


  Status = NtUserBuildHwndList (((void*)0), hWndparent, FALSE, 0, 0, pHwnd, &dwCount );

  if ( !NT_SUCCESS( Status ) )
    {
      if ( pHwnd )
        HeapFree ( hHeap, 0, pHwnd );
      return 0;
    }

  pHwnd[dwCount] = (HWND) 0;

  return pHwnd;
}
