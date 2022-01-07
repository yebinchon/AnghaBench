
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int iIcon; } ;
typedef TYPE_1__ SHFILEINFOW ;
typedef int LPCWSTR ;
typedef scalar_t__ LPCITEMIDLIST ;


 int SHGetFileInfoW (int ,int ,TYPE_1__*,int,int ) ;

__attribute__((used)) static int GetIcon(LPCITEMIDLIST lpi, UINT uFlags)
{
    SHFILEINFOW sfi;
    SHGetFileInfoW((LPCWSTR)lpi, 0 ,&sfi, sizeof(SHFILEINFOW), uFlags);
    return sfi.iIcon;
}
