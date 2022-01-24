#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct swaybar_sni {char* status; char* attention_icon_name; char* icon_name; int /*<<< orphan*/  icon; TYPE_2__* icon_pixmap; TYPE_2__* attention_icon_pixmap; int /*<<< orphan*/  max_size; int /*<<< orphan*/  min_size; scalar_t__ icon_theme_path; TYPE_1__* tray; } ;
struct swaybar_pixmap {scalar_t__ size; int /*<<< orphan*/  pixels; } ;
struct TYPE_9__ {int length; struct swaybar_pixmap** items; } ;
typedef  TYPE_2__ list_t ;
struct TYPE_8__ {int /*<<< orphan*/  themes; int /*<<< orphan*/  basedirs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAIRO_FORMAT_ARGB32 ; 
 int INT_MAX ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 () ; 
 char* FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,char*,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(struct swaybar_sni *sni, char *icon_theme,
		int target_size) {
	char *icon_name = sni->status[0] == 'N' ?
		sni->attention_icon_name : sni->icon_name;
	if (icon_name) {
		list_t *icon_search_paths = FUNC4();
		FUNC9(icon_search_paths, sni->tray->basedirs);
		if (sni->icon_theme_path) {
			FUNC8(icon_search_paths, sni->icon_theme_path);
		}
		char *icon_path = FUNC5(sni->tray->themes, icon_search_paths,
				icon_name, target_size, icon_theme,
				&sni->min_size, &sni->max_size);
		FUNC10(icon_search_paths);
		if (!icon_path && sni->icon_theme_path) {
			icon_path = FUNC6(icon_name, sni->icon_theme_path,
					&sni->min_size, &sni->max_size);
		}
		if (icon_path) {
			FUNC3(sni->icon);
			sni->icon = FUNC11(icon_path);
			FUNC7(icon_path);
			return;
		}
	}

	list_t *pixmaps = sni->status[0] == 'N' ?
		sni->attention_icon_pixmap : sni->icon_pixmap;
	if (pixmaps) {
		struct swaybar_pixmap *pixmap = NULL;
		int min_error = INT_MAX;
		for (int i = 0; i < pixmaps->length; ++i) {
			struct swaybar_pixmap *p = pixmaps->items[i];
			int e = FUNC0(target_size - p->size);
			if (e < min_error) {
				pixmap = p;
				min_error = e;
			}
		}
		FUNC3(sni->icon);
		sni->icon = FUNC2(pixmap->pixels,
				CAIRO_FORMAT_ARGB32, pixmap->size, pixmap->size,
				FUNC1(CAIRO_FORMAT_ARGB32, pixmap->size));
	}
}