
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int gchar ;
typedef scalar_t__ gboolean ;
typedef int cairo_t ;
typedef int cairo_surface_t ;
struct TYPE_10__ {int dpi; } ;
struct TYPE_9__ {int message; } ;
struct TYPE_8__ {double height; scalar_t__ width; } ;
typedef int RsvgHandle ;
typedef TYPE_1__ RsvgDimensionData ;
typedef TYPE_2__ GError ;


 int CAIRO_FORMAT_ARGB32 ;
 scalar_t__ CAIRO_STATUS_SUCCESS ;
 scalar_t__ FALSE ;
 scalar_t__ G_LIKELY (int) ;
 scalar_t__ G_UNLIKELY (scalar_t__) ;
 int * cairo_create (int *) ;
 int cairo_destroy (int *) ;
 int * cairo_image_surface_create (int ,double,double) ;
 int cairo_scale (int *,double,double) ;
 int cairo_surface_destroy (int *) ;
 scalar_t__ cairo_surface_status (int *) ;
 TYPE_7__ config ;
 int g_error_free (TYPE_2__*) ;
 int g_object_unref (int *) ;
 int g_warning (char*,int const*,...) ;
 int rsvg_handle_close (int *,TYPE_2__**) ;
 int rsvg_handle_get_dimensions (int *,TYPE_1__*) ;
 int * rsvg_handle_new_from_file (int const*,TYPE_2__**) ;
 scalar_t__ rsvg_handle_render_cairo (int *,int *) ;
 int rsvg_handle_set_dpi (int *,int ) ;

cairo_surface_t* cairo_image_surface_create_from_svg ( const gchar* file, int height )
{
    GError *error = ((void*)0);
    cairo_surface_t *surface = ((void*)0);
    RsvgHandle * handle;

    handle = rsvg_handle_new_from_file ( file, &error );
    if ( G_LIKELY ( handle != ((void*)0) ) ) {
        RsvgDimensionData dimensions;

        rsvg_handle_set_dpi ( handle, config.dpi );

        rsvg_handle_get_dimensions ( handle, &dimensions );

        double scale = (double) height / dimensions.height;
        surface = cairo_image_surface_create ( CAIRO_FORMAT_ARGB32,
                                               (double) dimensions.width * scale,
                                               (double) dimensions.height * scale );
        gboolean failed = cairo_surface_status ( surface ) != CAIRO_STATUS_SUCCESS;
        if ( G_LIKELY ( failed == FALSE ) ) {
            cairo_t *cr = cairo_create ( surface );
            cairo_scale ( cr, scale, scale );
            failed = rsvg_handle_render_cairo ( handle, cr ) == FALSE;
            cairo_destroy ( cr );
        }

        rsvg_handle_close ( handle, &error );
        g_object_unref ( handle );


        if ( G_UNLIKELY ( failed ) ) {
            g_warning ( "Failed to render file: '%s'", file );
            cairo_surface_destroy ( surface );
            surface = ((void*)0);
        }
    }
    if ( G_UNLIKELY ( error != ((void*)0) ) ) {
        g_warning ( "Failed to render SVG file: '%s': %s", file, error->message );
        g_error_free ( error );
    }

    return surface;
}
