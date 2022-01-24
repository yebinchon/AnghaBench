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
struct swaybar_tray {int /*<<< orphan*/  items; } ;
struct swaybar_sni {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_INFO ; 
 int /*<<< orphan*/  cmp_sni_id ; 
 struct swaybar_sni* FUNC0 (char*,struct swaybar_tray*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct swaybar_sni*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void FUNC4(struct swaybar_tray *tray, char *id) {
	int idx = FUNC2(tray->items, cmp_sni_id, id);
	if (idx == -1) {
		FUNC3(SWAY_INFO, "Registering Status Notifier Item '%s'", id);
		struct swaybar_sni *sni = FUNC0(id, tray);
		if (sni) {
			FUNC1(tray->items, sni);
		}
	}
}