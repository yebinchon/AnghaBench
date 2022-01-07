
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int lParam; int (* lpfn ) (int ,int ,int ,int ) ;} ;
typedef TYPE_1__* LPBROWSEINFOW ;
typedef int LPARAM ;
typedef int HWND ;


 int stub1 (int ,int ,int ,int ) ;

__attribute__((used)) static void browsefolder_callback( LPBROWSEINFOW lpBrowseInfo, HWND hWnd,
                                   UINT msg, LPARAM param )
{
    if (!lpBrowseInfo->lpfn)
        return;
    lpBrowseInfo->lpfn( hWnd, msg, param, lpBrowseInfo->lParam );
}
