
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hwndActiveChild; } ;
typedef TYPE_1__ MDICLIENTINFO ;
typedef scalar_t__ HWND ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int GWL_STYLE ;
 int GW_OWNER ;
 int GetParent (scalar_t__) ;
 int GetProcessHeap () ;
 scalar_t__ GetWindow (scalar_t__,int ) ;
 int GetWindowLongPtrW (scalar_t__,int ) ;
 int HeapFree (int ,int ,scalar_t__*) ;
 scalar_t__* WIN_ListChildren (int ) ;
 int WS_DISABLED ;
 int WS_VISIBLE ;

__attribute__((used)) static HWND MDI_GetWindow(MDICLIENTINFO *clientInfo, HWND hWnd, BOOL bNext,
                            DWORD dwStyleMask )
{
    int i;
    HWND *list;
    HWND last = 0;

    dwStyleMask |= WS_DISABLED | WS_VISIBLE;
    if( !hWnd ) hWnd = clientInfo->hwndActiveChild;

    if (!(list = WIN_ListChildren( GetParent(hWnd) ))) return 0;
    i = 0;

    while (list[i] && list[i] != hWnd) i++;
    if (list[i]) i++;

    for ( ; list[i]; i++)
    {
        if (GetWindow( list[i], GW_OWNER )) continue;
        if ((GetWindowLongPtrW( list[i], GWL_STYLE ) & dwStyleMask) != WS_VISIBLE) continue;
        last = list[i];
        if (bNext) goto found;
    }

    for (i = 0; list[i] && list[i] != hWnd; i++)
    {
        if (GetWindow( list[i], GW_OWNER )) continue;
        if ((GetWindowLongPtrW( list[i], GWL_STYLE ) & dwStyleMask) != WS_VISIBLE) continue;
        last = list[i];
        if (bNext) goto found;
    }
 found:
    HeapFree( GetProcessHeap(), 0, list );
    return last;
}
