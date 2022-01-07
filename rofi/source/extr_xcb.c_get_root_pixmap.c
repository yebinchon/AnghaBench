
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int root; } ;
typedef TYPE_1__ xcb_screen_t ;
typedef int xcb_pixmap_t ;
typedef int xcb_get_property_reply_t ;
typedef int xcb_get_property_cookie_t ;
typedef int xcb_connection_t ;
typedef int xcb_atom_t ;


 int XCB_ATOM_PIXMAP ;
 int XCB_NONE ;
 int free (int *) ;
 int memcpy (int *,int ,int) ;
 int xcb_get_property (int *,int ,int ,int ,int ,int ,int) ;
 int * xcb_get_property_reply (int *,int ,int *) ;
 int xcb_get_property_value (int *) ;
 int xcb_get_property_value_length (int *) ;

__attribute__((used)) static xcb_pixmap_t get_root_pixmap ( xcb_connection_t *c,
                                      xcb_screen_t *screen,
                                      xcb_atom_t atom )
{
    xcb_get_property_cookie_t cookie;
    xcb_get_property_reply_t *reply;
    xcb_pixmap_t rootpixmap = XCB_NONE;

    cookie = xcb_get_property ( c,
                                0,
                                screen->root,
                                atom,
                                XCB_ATOM_PIXMAP,
                                0,
                                1 );

    reply = xcb_get_property_reply ( c, cookie, ((void*)0) );

    if ( reply ) {
        if ( xcb_get_property_value_length ( reply ) == sizeof ( xcb_pixmap_t ) ) {
            memcpy ( &rootpixmap, xcb_get_property_value ( reply ), sizeof ( xcb_pixmap_t ) );
        }
        free ( reply );
    }

    return rootpixmap;
}
