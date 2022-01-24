#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gchar ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  cairo_t ;
typedef  int /*<<< orphan*/  cairo_surface_t ;
struct TYPE_10__ {int /*<<< orphan*/  dpi; } ;
struct TYPE_9__ {int /*<<< orphan*/  message; } ;
struct TYPE_8__ {double height; scalar_t__ width; } ;
typedef  int /*<<< orphan*/  RsvgHandle ;
typedef  TYPE_1__ RsvgDimensionData ;
typedef  TYPE_2__ GError ;

/* Variables and functions */
 int /*<<< orphan*/  CAIRO_FORMAT_ARGB32 ; 
 scalar_t__ CAIRO_STATUS_SUCCESS ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,double,double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_7__ config ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/  const*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/  const*,TYPE_2__**) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

cairo_surface_t* FUNC16 ( const gchar* file, int height )
{
    GError          *error   = NULL;
    cairo_surface_t *surface = NULL;
    RsvgHandle      * handle;

    handle = FUNC13 ( file, &error );
    if ( FUNC0 ( handle != NULL ) ) {
        RsvgDimensionData dimensions;
        // Update DPI.
        FUNC15 ( handle, config.dpi );
        // Get size.
        FUNC12 ( handle, &dimensions );
        // Create cairo surface in the right size.
        double scale = (double) height / dimensions.height;
        surface = FUNC4 ( CAIRO_FORMAT_ARGB32,
                                               (double) dimensions.width * scale,
                                               (double) dimensions.height * scale );
        gboolean failed = FUNC7 ( surface ) != CAIRO_STATUS_SUCCESS;
        if ( FUNC0 ( failed == FALSE ) ) {
            cairo_t *cr = FUNC2 ( surface );
            FUNC5 ( cr, scale, scale );
            failed = FUNC14 ( handle, cr ) == FALSE;
            FUNC3 ( cr );
        }

        FUNC11 ( handle, &error );
        FUNC9 ( handle );

        /** Rendering fails */
        if ( FUNC1 ( failed ) ) {
            FUNC10 ( "Failed to render file: '%s'", file );
            FUNC6 ( surface );
            surface = NULL;
        }
    }
    if ( FUNC1 ( error != NULL ) ) {
        FUNC10 ( "Failed to render SVG file: '%s': %s", file, error->message );
        FUNC8 ( error );
    }

    return surface;
}