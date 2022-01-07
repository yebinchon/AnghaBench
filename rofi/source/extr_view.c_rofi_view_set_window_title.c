
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_6__ {int main_window; } ;
struct TYPE_4__ {int UTF8_STRING; int _NET_WM_NAME; } ;
struct TYPE_5__ {int connection; TYPE_1__ ewmh; } ;


 TYPE_3__ CacheState ;
 int XCB_ATOM_STRING ;
 int XCB_ATOM_WM_NAME ;
 int XCB_PROP_MODE_REPLACE ;
 int strlen (char const*) ;
 TYPE_2__* xcb ;
 int xcb_change_property (int ,int ,int ,int ,int ,int,int ,char const*) ;

void rofi_view_set_window_title ( const char * title )
{
    ssize_t len = strlen(title);
    xcb_change_property ( xcb->connection, XCB_PROP_MODE_REPLACE, CacheState.main_window, xcb->ewmh._NET_WM_NAME, xcb->ewmh.UTF8_STRING, 8, len, title );
    xcb_change_property ( xcb->connection, XCB_PROP_MODE_REPLACE, CacheState.main_window, XCB_ATOM_WM_NAME, XCB_ATOM_STRING, 8, len, title );
}
