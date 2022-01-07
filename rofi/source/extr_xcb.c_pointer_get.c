
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xcb_window_t ;
struct TYPE_5__ {int root_x; int root_y; } ;
typedef TYPE_1__ xcb_query_pointer_reply_t ;
typedef int xcb_query_pointer_cookie_t ;
struct TYPE_6__ {int connection; } ;


 int FALSE ;
 int TRUE ;
 int free (TYPE_1__*) ;
 TYPE_3__* xcb ;
 int xcb_query_pointer (int ,int ) ;
 TYPE_1__* xcb_query_pointer_reply (int ,int ,int *) ;

__attribute__((used)) static int pointer_get ( xcb_window_t root, int *x, int *y )
{
    *x = 0;
    *y = 0;
    xcb_query_pointer_cookie_t c = xcb_query_pointer ( xcb->connection, root );
    xcb_query_pointer_reply_t *r = xcb_query_pointer_reply ( xcb->connection, c, ((void*)0) );
    if ( r ) {
        *x = r->root_x;
        *y = r->root_y;
        free ( r );
        return TRUE;
    }

    return FALSE;
}
