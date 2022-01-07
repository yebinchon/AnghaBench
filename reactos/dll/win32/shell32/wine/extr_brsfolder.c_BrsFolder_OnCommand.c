
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hWnd; int * pidlRet; TYPE_2__* lpBrowseInfo; } ;
typedef TYPE_1__ browse_info ;
typedef int UINT ;
struct TYPE_6__ {int pszDisplayName; } ;
typedef TYPE_2__* LPBROWSEINFOW ;
typedef int BOOL ;


 int BrsFolder_NewFolder (TYPE_1__*) ;
 int EndDialog (int ,int) ;
 int FALSE ;



 int * ILClone (int *) ;
 int SHGetPathFromIDListW (int *,int ) ;
 int TRUE ;
 int * _ILCreateDesktop () ;
 int pdump (int *) ;

__attribute__((used)) static BOOL BrsFolder_OnCommand( browse_info *info, UINT id )
{
    LPBROWSEINFOW lpBrowseInfo = info->lpBrowseInfo;

    switch (id)
    {
    case 128:




        if (info->pidlRet == ((void*)0))
            info->pidlRet = _ILCreateDesktop();
        pdump( info->pidlRet );
        if (lpBrowseInfo->pszDisplayName)
            SHGetPathFromIDListW( info->pidlRet, lpBrowseInfo->pszDisplayName );
        EndDialog( info->hWnd, 1 );
        return TRUE;

    case 130:
        EndDialog( info->hWnd, 0 );
        return TRUE;

    case 129:
        BrsFolder_NewFolder(info);
        return TRUE;
    }
    return FALSE;
}
