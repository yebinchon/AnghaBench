
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_window_t ;
typedef void* xcb_pixmap_t ;
typedef void* xcb_cursor_t ;
typedef int xcb_connection_t ;


 int xcb_create_cursor (int *,void*,void*,void*,int ,int ,int ,int ,int ,int ,int,int) ;
 int xcb_create_pixmap (int *,int,void*,int ,int,int) ;
 void* xcb_generate_id (int *) ;

__attribute__((used)) static xcb_cursor_t CursorCreate(xcb_connection_t *conn, xcb_window_t root)
{
    xcb_cursor_t cur = xcb_generate_id(conn);
    xcb_pixmap_t pix = xcb_generate_id(conn);

    xcb_create_pixmap(conn, 1, pix, root, 1, 1);
    xcb_create_cursor(conn, cur, pix, pix, 0, 0, 0, 0, 0, 0, 1, 1);
    return cur;
}
