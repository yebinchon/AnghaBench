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
typedef  int /*<<< orphan*/  json_object ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*,char*,char*,char*,char*) ; 

__attribute__((used)) static void FUNC4(json_object *w) {
	json_object *name, *rect, *visible, *output, *urgent, *layout,
				*representation, *focused;
	FUNC2(w, "name", &name);
	FUNC2(w, "rect", &rect);
	FUNC2(w, "visible", &visible);
	FUNC2(w, "output", &output);
	FUNC2(w, "urgent", &urgent);
	FUNC2(w, "layout", &layout);
	FUNC2(w, "representation", &representation);
	FUNC2(w, "focused", &focused);
	FUNC3(
		"Workspace %s%s%s%s\n"
		"  Output: %s\n"
		"  Layout: %s\n"
		"  Representation: %s\n\n",
		FUNC1(name),
		FUNC0(focused) ? " (focused)" : "",
		!FUNC0(visible) ? " (off-screen)" : "",
		FUNC0(urgent) ? " (urgent)" : "",
		FUNC1(output),
		FUNC1(layout),
		FUNC1(representation)
	);
}