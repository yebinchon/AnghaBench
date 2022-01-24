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
 int L_NONE ; 
 int FUNC0 (int,char**,int,int,struct sway_output*) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static enum sway_container_layout FUNC3(int argc, char **argv,
		enum sway_container_layout layout,
		enum sway_container_layout prev_split_layout,
		struct sway_output *output) {
	// Check if assigned directly
	enum sway_container_layout parsed = FUNC1(argv[0]);
	if (parsed != L_NONE) {
		return parsed;
	}

	if (FUNC2(argv[0], "default") == 0) {
		return prev_split_layout;
	}

	if (FUNC2(argv[0], "toggle") == 0) {
		return FUNC0(argc, argv, layout, prev_split_layout, output);
	}

	return L_NONE;
}