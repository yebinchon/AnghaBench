
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_2__ {int iDesktop; } ;
typedef int LPWSTR ;
typedef int * LPITEMIDLIST ;
typedef int HWND ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 TYPE_1__ Globals ;
 int IShellFolder_ParseDisplayName (int ,int ,int *,int ,int *,int **,int *) ;

__attribute__((used)) static LPITEMIDLIST get_path_pidl(LPWSTR path, HWND hwnd)
{
 LPITEMIDLIST pidl;
 HRESULT hr;
 ULONG len;
 LPWSTR buffer = path;

 hr = IShellFolder_ParseDisplayName(Globals.iDesktop, hwnd, ((void*)0), buffer, &len, &pidl, ((void*)0));
 if (FAILED(hr))
  return ((void*)0);

 return pidl;
}
