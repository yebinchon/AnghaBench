
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ main_window; } ;
struct TYPE_3__ {int connection; } ;


 TYPE_2__ CacheState ;
 scalar_t__ XCB_WINDOW_NONE ;
 int display_early_cleanup () ;
 TYPE_1__* xcb ;
 int xcb_unmap_window (int ,scalar_t__) ;

void rofi_view_hide ( void )
{
    if ( CacheState.main_window != XCB_WINDOW_NONE ) {
        xcb_unmap_window ( xcb->connection, CacheState.main_window );
        display_early_cleanup ();
    }
}
