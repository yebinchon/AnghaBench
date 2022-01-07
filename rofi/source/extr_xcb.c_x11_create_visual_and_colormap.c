
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;


typedef int xcb_void_cookie_t ;
struct TYPE_16__ {int bits_per_rgb_value; scalar_t__ _class; scalar_t__ visual_id; } ;
typedef TYPE_1__ xcb_visualtype_t ;
struct TYPE_17__ {TYPE_1__* data; scalar_t__ rem; } ;
typedef TYPE_2__ xcb_visualtype_iterator_t ;
typedef int xcb_generic_error_t ;
struct TYPE_18__ {int depth; } ;
typedef TYPE_3__ xcb_depth_t ;
struct TYPE_19__ {TYPE_3__* data; scalar_t__ rem; } ;
typedef TYPE_4__ xcb_depth_iterator_t ;
struct TYPE_20__ {scalar_t__ root_visual; int default_colormap; int root; } ;
struct TYPE_15__ {TYPE_7__* screen; int connection; } ;


 int XCB_COLORMAP_ALLOC_NONE ;
 scalar_t__ XCB_VISUAL_CLASS_TRUE_COLOR ;
 TYPE_3__* depth ;
 int free (int *) ;
 int map ;
 TYPE_1__* root_visual ;
 TYPE_1__* visual ;
 TYPE_11__* xcb ;
 int xcb_create_colormap_checked (int ,int ,int ,int ,scalar_t__) ;
 int xcb_depth_next (TYPE_4__*) ;
 TYPE_2__ xcb_depth_visuals_iterator (TYPE_3__*) ;
 int xcb_generate_id (int ) ;
 int * xcb_request_check (int ,int ) ;
 TYPE_4__ xcb_screen_allowed_depths_iterator (TYPE_7__*) ;
 int xcb_visualtype_next (TYPE_2__*) ;

__attribute__((used)) static void x11_create_visual_and_colormap ( void )
{
    xcb_depth_t *root_depth = ((void*)0);
    xcb_depth_iterator_t depth_iter;
    for ( depth_iter = xcb_screen_allowed_depths_iterator ( xcb->screen ); depth_iter.rem; xcb_depth_next ( &depth_iter ) ) {
        xcb_depth_t *d = depth_iter.data;

        xcb_visualtype_iterator_t visual_iter;
        for ( visual_iter = xcb_depth_visuals_iterator ( d ); visual_iter.rem; xcb_visualtype_next ( &visual_iter ) ) {
            xcb_visualtype_t *v = visual_iter.data;
            if ( ( v->bits_per_rgb_value == 8 ) && ( d->depth == 32 ) && ( v->_class == XCB_VISUAL_CLASS_TRUE_COLOR ) ) {
                depth = d;
                visual = v;
            }
            if ( xcb->screen->root_visual == v->visual_id ) {
                root_depth = d;
                root_visual = v;
            }
        }
    }
    if ( visual != ((void*)0) ) {
        xcb_void_cookie_t c;
        xcb_generic_error_t *e;
        map = xcb_generate_id ( xcb->connection );
        c = xcb_create_colormap_checked ( xcb->connection, XCB_COLORMAP_ALLOC_NONE, map, xcb->screen->root, visual->visual_id );
        e = xcb_request_check ( xcb->connection, c );
        if ( e ) {
            depth = ((void*)0);
            visual = ((void*)0);
            free ( e );
        }
    }

    if ( visual == ((void*)0) ) {
        depth = root_depth;
        visual = root_visual;
        map = xcb->screen->default_colormap;
    }
}
