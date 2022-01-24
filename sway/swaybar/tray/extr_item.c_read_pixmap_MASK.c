#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct swaybar_sni {int /*<<< orphan*/  watcher_id; } ;
struct swaybar_pixmap {int size; scalar_t__ pixels; } ;
typedef  int /*<<< orphan*/  sd_bus_message ;
struct TYPE_6__ {int length; } ;
typedef  TYPE_1__ list_t ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct swaybar_pixmap*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct swaybar_pixmap* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,char,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,int*,int*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char,void const**,size_t*) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,...) ; 

__attribute__((used)) static int FUNC12(sd_bus_message *msg, struct swaybar_sni *sni,
		const char *prop, list_t **dest) {
	int ret = FUNC6(msg, 'a', "(iiay)");
	if (ret < 0) {
		FUNC11(SWAY_ERROR, "%s %s: %s", sni->watcher_id, prop, FUNC10(-ret));
		return ret;
	}

	if (FUNC5(msg, 0)) {
		FUNC11(SWAY_DEBUG, "%s %s no. of icons = 0", sni->watcher_id, prop);
		return ret;
	}

	list_t *pixmaps = FUNC0();
	if (!pixmaps) {
		return -12; // -ENOMEM
	}

	while (!FUNC5(msg, 0)) {
		ret = FUNC6(msg, 'r', "iiay");
		if (ret < 0) {
			FUNC11(SWAY_ERROR, "%s %s: %s", sni->watcher_id, prop, FUNC10(-ret));
			goto error;
		}

		int width, height;
		ret = FUNC8(msg, "ii", &width, &height);
		if (ret < 0) {
			FUNC11(SWAY_ERROR, "%s %s: %s", sni->watcher_id, prop, FUNC10(-ret));
			goto error;
		}

		const void *pixels;
		size_t npixels;
		ret = FUNC9(msg, 'y', &pixels, &npixels);
		if (ret < 0) {
			FUNC11(SWAY_ERROR, "%s %s: %s", sni->watcher_id, prop, FUNC10(-ret));
			goto error;
		}

		if (height > 0 && width == height) {
			FUNC11(SWAY_DEBUG, "%s %s: found icon w:%d h:%d", sni->watcher_id, prop, width, height);
			struct swaybar_pixmap *pixmap =
				FUNC3(sizeof(struct swaybar_pixmap) + npixels);
			pixmap->size = height;

			// convert from network byte order to host byte order
			for (int i = 0; i < height * width; ++i) {
				((uint32_t *)pixmap->pixels)[i] = FUNC4(((uint32_t *)pixels)[i]);
			}

			FUNC1(pixmaps, pixmap);
		} else {
			FUNC11(SWAY_DEBUG, "%s %s: discard invalid icon w:%d h:%d", sni->watcher_id, prop, width, height);
		}

		FUNC7(msg);
	}

	if (pixmaps->length < 1) {
		FUNC11(SWAY_DEBUG, "%s %s no. of icons = 0", sni->watcher_id, prop);
		goto error;
	}

	FUNC2(*dest);
	*dest = pixmaps;
	FUNC11(SWAY_DEBUG, "%s %s no. of icons = %d", sni->watcher_id, prop,
			pixmaps->length);

	return ret;
error:
	FUNC2(pixmaps);
	return ret;
}