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
struct sway_output {int dummy; } ;
typedef  enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;

/* Variables and functions */
 int L_HORIZ ; 
 int L_NONE ; 
 int L_STACKED ; 
 int L_TABBED ; 
 int L_VERT ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (int,int,struct sway_output*) ; 

__attribute__((used)) static enum sway_container_layout FUNC4(int argc, char **argv,
		enum sway_container_layout layout,
		enum sway_container_layout prev_split_layout,
		struct sway_output *output) {
	// "layout toggle"
	if (argc == 1) {
		return FUNC3(layout, prev_split_layout, output);
	}

	if (argc == 2) {
		// "layout toggle split" (same as "layout toggle")
		if (FUNC1(argv[1], "split") == 0) {
			return FUNC3(layout, prev_split_layout, output);
		}
		// "layout toggle all"
		if (FUNC1(argv[1], "all") == 0) {
			return layout == L_HORIZ ? L_VERT :
				layout == L_VERT ? L_STACKED :
				layout == L_STACKED ? L_TABBED : L_HORIZ;
		}
		return L_NONE;
	}

	enum sway_container_layout parsed;
	int curr = 1;
	for (; curr < argc; curr++) {
		parsed = FUNC0(argv[curr]);
		if (parsed == layout || (FUNC2(argv[curr], "split") == 0 &&
				 (layout == L_VERT || layout == L_HORIZ))) {
			break;
		}
	}
	for (int i = curr + 1; i != curr; ++i) {
		// cycle round to find next valid layout
		if (i >= argc) {
			i = 1;
		}
		parsed = FUNC0(argv[i]);
		if (parsed != L_NONE) {
			return parsed;
		}
		if (FUNC2(argv[i], "split") == 0) {
			return FUNC3(layout, prev_split_layout, output);
		}
		// invalid layout strings are silently ignored
	}
	return L_NONE;
}