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
struct sway_workspace {char* name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 

__attribute__((used)) static bool FUNC1(struct sway_workspace *ws, void *data) {
	char *name = data;
	char *ws_name = ws->name;
	while (FUNC0(*name)) {
		if (*name++ != *ws_name++) {
			return false;
		}
	}
	return !FUNC0(*ws_name);
}