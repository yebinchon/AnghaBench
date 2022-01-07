
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_5__ {scalar_t__ hwndActiveChild; } ;
typedef TYPE_1__ MDICLIENTINFO ;
typedef long LPARAM ;
typedef int LONG ;
typedef scalar_t__ HWND ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ GetActiveWindow () ;
 scalar_t__ GetParent (scalar_t__) ;
 int MDI_RefreshMenu (TYPE_1__*) ;
 int MDI_SwitchActiveChild (TYPE_1__*,scalar_t__,int ) ;
 int SendMessageW (scalar_t__,int ,int ,long) ;
 scalar_t__ SetFocus (scalar_t__) ;
 int TRACE (char*,scalar_t__) ;
 int TRUE ;
 int WM_MDIACTIVATE ;
 int WM_NCACTIVATE ;
 int WM_SETFOCUS ;
 TYPE_1__* get_client_info (scalar_t__) ;

__attribute__((used)) static LONG MDI_ChildActivate( HWND client, HWND child )
{
    MDICLIENTINFO *clientInfo;
    HWND prevActiveWnd, frame;
    BOOL isActiveFrameWnd;

    clientInfo = get_client_info( client );

    if (clientInfo->hwndActiveChild == child) return 0;

    TRACE("%p\n", child);

    frame = GetParent(client);
    isActiveFrameWnd = (GetActiveWindow() == frame);
    prevActiveWnd = clientInfo->hwndActiveChild;


    if(prevActiveWnd)
    {
        SendMessageW( prevActiveWnd, WM_NCACTIVATE, FALSE, 0L );
        SendMessageW( prevActiveWnd, WM_MDIACTIVATE, (WPARAM)prevActiveWnd, (LPARAM)child);
    }

    MDI_SwitchActiveChild( clientInfo, child, FALSE );
    clientInfo->hwndActiveChild = child;

    MDI_RefreshMenu(clientInfo);

    if( isActiveFrameWnd )
    {
        SendMessageW( child, WM_NCACTIVATE, TRUE, 0L);





        if (SetFocus(client) == client)
            SendMessageW( client, WM_SETFOCUS, (WPARAM)client, 0 );
    }

    SendMessageW( child, WM_MDIACTIVATE, (WPARAM)prevActiveWnd, (LPARAM)child );
    return TRUE;
}
