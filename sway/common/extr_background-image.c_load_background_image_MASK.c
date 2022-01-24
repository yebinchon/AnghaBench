#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cairo_surface_t ;
struct TYPE_3__ {int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  GdkPixbuf ;
typedef  TYPE_1__ GError ;

/* Variables and functions */
 scalar_t__ CAIRO_STATUS_SUCCESS ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

cairo_surface_t *FUNC7(const char *path) {
	cairo_surface_t *image;
#if HAVE_GDK_PIXBUF
	GError *err = NULL;
	GdkPixbuf *pixbuf = gdk_pixbuf_new_from_file(path, &err);
	if (!pixbuf) {
		sway_log(SWAY_ERROR, "Failed to load background image (%s).",
				err->message);
		return NULL;
	}
	image = gdk_cairo_image_surface_create_from_pixbuf(pixbuf);
	g_object_unref(pixbuf);
#else
	image = FUNC0(path);
#endif // HAVE_GDK_PIXBUF
	if (!image) {
		FUNC6(SWAY_ERROR, "Failed to read background image.");
		return NULL;
	}
	if (FUNC2(image) != CAIRO_STATUS_SUCCESS) {
		FUNC6(SWAY_ERROR, "Failed to read background image: %s."
#if !HAVE_GDK_PIXBUF
				"\nSway was compiled without gdk_pixbuf support, so only"
				"\nPNG images can be loaded. This is the likely cause."
#endif // !HAVE_GDK_PIXBUF
				, FUNC1(FUNC2(image)));
		return NULL;
	}
	return image;
}