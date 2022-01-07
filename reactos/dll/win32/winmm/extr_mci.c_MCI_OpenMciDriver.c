
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int libName ;
typedef int WCHAR ;
struct TYPE_3__ {int * hDriver; } ;
typedef TYPE_1__* LPWINE_MCIDRIVER ;
typedef int LPCWSTR ;
typedef int * HDRVR ;
typedef int DWORD_PTR ;
typedef int BOOL ;


 int DRIVER_GetLibName (int ,int ,int *,int) ;
 scalar_t__ DRIVER_TryOpenDriver32 (int *,int ) ;
 int FALSE ;
 int wszMci ;

__attribute__((used)) static BOOL MCI_OpenMciDriver(LPWINE_MCIDRIVER wmd, LPCWSTR drvTyp, DWORD_PTR lp)
{
    WCHAR libName[128];

    if (!DRIVER_GetLibName(drvTyp, wszMci, libName, sizeof(libName)))
 return FALSE;


    wmd->hDriver = (HDRVR)DRIVER_TryOpenDriver32(libName, lp);
    return wmd->hDriver != ((void*)0);
}
