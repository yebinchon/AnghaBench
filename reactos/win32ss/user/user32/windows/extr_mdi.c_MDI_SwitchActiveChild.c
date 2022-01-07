
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hwndActiveChild; } ;
typedef TYPE_1__ MDICLIENTINFO ;
typedef scalar_t__ HWND ;
typedef scalar_t__ BOOL ;


 int FALSE ;
 int HWND_TOP ;
 scalar_t__ IsZoomed (scalar_t__) ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOSIZE ;
 int SW_MAXIMIZE ;
 int SW_RESTORE ;
 int SendMessageW (scalar_t__,int ,int ,int ) ;
 int SetWindowPos (scalar_t__,int ,int ,int ,int ,int ,int) ;
 int ShowWindow (scalar_t__,int ) ;
 int TRACE (char*,scalar_t__,scalar_t__) ;
 int TRUE ;
 int WM_SETREDRAW ;

__attribute__((used)) static void MDI_SwitchActiveChild( MDICLIENTINFO *ci, HWND hwndTo, BOOL activate )
{
    HWND hwndPrev;

    hwndPrev = ci->hwndActiveChild;

    TRACE("from %p, to %p\n", hwndPrev, hwndTo);

    if ( hwndTo != hwndPrev )
    {
        BOOL was_zoomed = IsZoomed(hwndPrev);

        if (was_zoomed)
        {

            SendMessageW( hwndPrev, WM_SETREDRAW, FALSE, 0 );
            ShowWindow( hwndPrev, SW_RESTORE );
            SendMessageW( hwndPrev, WM_SETREDRAW, TRUE, 0 );


            SetWindowPos( hwndTo, HWND_TOP, 0, 0, 0, 0, SWP_NOMOVE | SWP_NOSIZE );

            ShowWindow( hwndTo, SW_MAXIMIZE );
        }

        SetWindowPos( hwndTo, HWND_TOP, 0, 0, 0, 0, SWP_NOMOVE | SWP_NOSIZE | (activate ? 0 : SWP_NOACTIVATE) );
    }
}
