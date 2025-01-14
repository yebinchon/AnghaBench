
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_9__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_12__ {TYPE_2__ ptMaxPosition; TYPE_1__ ptMaxSize; } ;
struct TYPE_11__ {scalar_t__ top; scalar_t__ left; int bottom; int right; } ;
typedef TYPE_3__ RECT ;
typedef TYPE_4__ MINMAXINFO ;
typedef int HWND ;


 int AdjustWindowRectEx (TYPE_3__*,int ,int ,int ) ;
 int GWL_EXSTYLE ;
 int GWL_STYLE ;
 int GetClientRect (int ,TYPE_3__*) ;
 int GetWindowLongPtrW (int ,int ) ;
 int TRACE (char*,int ) ;
 int wine_dbgstr_rect (TYPE_3__*) ;

__attribute__((used)) static void MDI_ChildGetMinMaxInfo( HWND client, HWND hwnd, MINMAXINFO* lpMinMax )
{
    RECT rect;

    GetClientRect( client, &rect );
    AdjustWindowRectEx( &rect, GetWindowLongPtrW( hwnd, GWL_STYLE ),
                        0, GetWindowLongPtrW( hwnd, GWL_EXSTYLE ));

    lpMinMax->ptMaxSize.x = rect.right -= rect.left;
    lpMinMax->ptMaxSize.y = rect.bottom -= rect.top;

    lpMinMax->ptMaxPosition.x = rect.left;
    lpMinMax->ptMaxPosition.y = rect.top;

    TRACE("max rect %s\n", wine_dbgstr_rect(&rect));
}
