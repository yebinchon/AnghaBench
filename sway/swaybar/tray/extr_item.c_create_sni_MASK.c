#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct swaybar_tray {int dummy; } ;
struct swaybar_sni {char* interface; int /*<<< orphan*/  new_status_slot; int /*<<< orphan*/  new_attention_icon_slot; int /*<<< orphan*/  new_icon_slot; int /*<<< orphan*/  menu; int /*<<< orphan*/  item_is_menu; int /*<<< orphan*/  attention_icon_pixmap; int /*<<< orphan*/  attention_icon_name; int /*<<< orphan*/  icon_pixmap; int /*<<< orphan*/  icon_name; int /*<<< orphan*/  status; int /*<<< orphan*/  icon_theme_path; void* path; void* service; void* watcher_id; struct swaybar_tray* tray; } ;

/* Variables and functions */
 struct swaybar_sni* FUNC0 (int,int) ; 
 int /*<<< orphan*/  handle_new_attention_icon ; 
 int /*<<< orphan*/  handle_new_icon ; 
 int /*<<< orphan*/  handle_new_status ; 
 int /*<<< orphan*/  FUNC1 (struct swaybar_sni*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct swaybar_sni*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char) ; 
 void* FUNC4 (char*) ; 
 void* FUNC5 (char*,int) ; 

struct swaybar_sni *FUNC6(char *id, struct swaybar_tray *tray) {
	struct swaybar_sni *sni = FUNC0(1, sizeof(struct swaybar_sni));
	if (!sni) {
		return NULL;
	}
	sni->tray = tray;
	sni->watcher_id = FUNC4(id);
	char *path_ptr = FUNC3(id, '/');
	if (!path_ptr) {
		sni->service = FUNC4(id);
		sni->path = FUNC4("/StatusNotifierItem");
		sni->interface = "org.freedesktop.StatusNotifierItem";
	} else {
		sni->service = FUNC5(id, path_ptr - id);
		sni->path = FUNC4(path_ptr);
		sni->interface = "org.kde.StatusNotifierItem";
		FUNC1(sni, "IconThemePath", "s", &sni->icon_theme_path);
	}

	// Ignored: Category, Id, Title, WindowId, OverlayIconName,
	//          OverlayIconPixmap, AttentionMovieName, ToolTip
	FUNC1(sni, "Status", "s", &sni->status);
	FUNC1(sni, "IconName", "s", &sni->icon_name);
	FUNC1(sni, "IconPixmap", NULL, &sni->icon_pixmap);
	FUNC1(sni, "AttentionIconName", "s", &sni->attention_icon_name);
	FUNC1(sni, "AttentionIconPixmap", NULL, &sni->attention_icon_pixmap);
	FUNC1(sni, "ItemIsMenu", "b", &sni->item_is_menu);
	FUNC1(sni, "Menu", "o", &sni->menu);

	FUNC2(sni, &sni->new_icon_slot, "NewIcon", handle_new_icon);
	FUNC2(sni, &sni->new_attention_icon_slot, "NewAttentionIcon",
			handle_new_attention_icon);
	FUNC2(sni, &sni->new_status_slot, "NewStatus", handle_new_status);

	return sni;
}