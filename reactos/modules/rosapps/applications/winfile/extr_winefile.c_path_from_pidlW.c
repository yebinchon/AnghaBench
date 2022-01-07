
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mkid; } ;
typedef int STRRET ;
typedef char* LPWSTR ;
typedef TYPE_1__* LPITEMIDLIST ;
typedef int IShellFolder ;
typedef int HRESULT ;


 int IShellFolder_GetDisplayNameOf (int *,TYPE_1__*,int ,int *) ;
 int SHGDN_FORPARSING ;
 scalar_t__ SUCCEEDED (int ) ;
 int free_strret (int *) ;
 int get_strretW (int *,int *,char*,int) ;

__attribute__((used)) static HRESULT path_from_pidlW(IShellFolder* folder, LPITEMIDLIST pidl, LPWSTR buffer, int len)
{
 STRRET str;


 HRESULT hr = IShellFolder_GetDisplayNameOf(folder, pidl, SHGDN_FORPARSING, &str);

 if (SUCCEEDED(hr)) {
  get_strretW(&str, &pidl->mkid, buffer, len);
  free_strret(&str);
 } else
  buffer[0] = '\0';

 return hr;
}
