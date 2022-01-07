
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; scalar_t__ wExtra; } ;
typedef TYPE_1__ WND ;
typedef int MDICLIENTINFO ;
typedef int HWND ;


 int GWLP_MDIWND ;
 scalar_t__ GetWindowLongPtr (int ,int ) ;
 scalar_t__ IsWindow (int ) ;
 int WARN (char*,int ) ;
 TYPE_1__* WIN_GetPtr (int ) ;
 int WIN_ISMDICLIENT ;
 int WIN_ReleasePtr (TYPE_1__*) ;
 TYPE_1__* WND_DESKTOP ;
 TYPE_1__* WND_OTHER_PROCESS ;

__attribute__((used)) static MDICLIENTINFO *get_client_info( HWND client )
{



    MDICLIENTINFO *ret = ((void*)0);
    WND *win = WIN_GetPtr( client );
    if (win)
    {
        if (win == WND_OTHER_PROCESS || win == WND_DESKTOP)
        {
            if (IsWindow(client)) WARN( "client %p belongs to other process\n", client );
            return ((void*)0);
        }
        if (win->flags & WIN_ISMDICLIENT)
            ret = (MDICLIENTINFO *)win->wExtra;
        else
            WARN( "%p is not an MDI client\n", client );
        WIN_ReleasePtr( win );
    }
    return ret;

}
