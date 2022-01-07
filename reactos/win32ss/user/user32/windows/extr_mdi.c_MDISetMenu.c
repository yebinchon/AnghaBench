
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ hFrameMenu; scalar_t__ hWindowMenu; scalar_t__ hwndChildMaximized; scalar_t__ nActiveChildren; int hBmpClose; } ;
typedef TYPE_1__ MDICLIENTINFO ;
typedef long LRESULT ;
typedef int HWND ;
typedef scalar_t__ HMENU ;


 int GetParent (int ) ;
 int IsMenu (scalar_t__) ;
 int MDI_AugmentFrameMenu (int ,scalar_t__) ;
 int MDI_RefreshMenu (TYPE_1__*) ;
 int MDI_RestoreFrameMenu (int ,scalar_t__,int ) ;
 int SetMenu (int ,scalar_t__) ;
 int TRACE (char*,scalar_t__,scalar_t__,...) ;
 int WARN (char*) ;
 TYPE_1__* get_client_info (int ) ;

__attribute__((used)) static LRESULT MDISetMenu( HWND hwnd, HMENU hmenuFrame,
                           HMENU hmenuWindow)
{
    MDICLIENTINFO *ci;
    HWND hwndFrame = GetParent(hwnd);

    TRACE("%p, frame menu %p, window menu %p\n", hwnd, hmenuFrame, hmenuWindow);

    if (hmenuFrame && !IsMenu(hmenuFrame))
    {
 WARN("hmenuFrame is not a menu handle\n");
 return 0L;
    }

    if (hmenuWindow && !IsMenu(hmenuWindow))
    {
 WARN("hmenuWindow is not a menu handle\n");
 return 0L;
    }

    if (!(ci = get_client_info( hwnd ))) return 0;

    TRACE("old frame menu %p, old window menu %p\n", ci->hFrameMenu, ci->hWindowMenu);

    if (hmenuFrame)
    {
        if (hmenuFrame == ci->hFrameMenu) return (LRESULT)hmenuFrame;

        if (ci->hwndChildMaximized)
            MDI_RestoreFrameMenu( hwndFrame, ci->hwndChildMaximized, ci->hBmpClose );
    }

    if( hmenuWindow && hmenuWindow != ci->hWindowMenu )
    {



        if( ci->hWindowMenu && ci->nActiveChildren )
        {
            UINT nActiveChildren_old = ci->nActiveChildren;


            ci->nActiveChildren = 0;
            MDI_RefreshMenu(ci);

            ci->hWindowMenu = hmenuWindow;


            ci->nActiveChildren = nActiveChildren_old;
            MDI_RefreshMenu(ci);
        }
        else
            ci->hWindowMenu = hmenuWindow;
    }

    if (hmenuFrame)
    {
        SetMenu(hwndFrame, hmenuFrame);
        if( hmenuFrame != ci->hFrameMenu )
        {
            HMENU oldFrameMenu = ci->hFrameMenu;

            ci->hFrameMenu = hmenuFrame;
            if (ci->hwndChildMaximized)
                MDI_AugmentFrameMenu( hwndFrame, ci->hwndChildMaximized );

            return (LRESULT)oldFrameMenu;
        }
    }

    return 0;
}
