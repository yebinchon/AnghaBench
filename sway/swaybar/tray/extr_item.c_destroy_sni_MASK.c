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
struct swaybar_sni {struct swaybar_sni* icon_theme_path; struct swaybar_sni* menu; int /*<<< orphan*/  attention_icon_pixmap; struct swaybar_sni* attention_icon_name; int /*<<< orphan*/  icon_pixmap; struct swaybar_sni* icon_name; struct swaybar_sni* status; struct swaybar_sni* path; struct swaybar_sni* service; struct swaybar_sni* watcher_id; int /*<<< orphan*/  new_status_slot; int /*<<< orphan*/  new_attention_icon_slot; int /*<<< orphan*/  new_icon_slot; int /*<<< orphan*/  icon; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct swaybar_sni*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct swaybar_sni *sni) {
	if (!sni) {
		return;
	}

	FUNC0(sni->icon);

	FUNC3(sni->new_icon_slot);
	FUNC3(sni->new_attention_icon_slot);
	FUNC3(sni->new_status_slot);

	FUNC1(sni->watcher_id);
	FUNC1(sni->service);
	FUNC1(sni->path);
	FUNC1(sni->status);
	FUNC1(sni->icon_name);
	FUNC2(sni->icon_pixmap);
	FUNC1(sni->attention_icon_name);
	FUNC2(sni->attention_icon_pixmap);
	FUNC1(sni->menu);
	FUNC1(sni->icon_theme_path);
	FUNC1(sni);
}