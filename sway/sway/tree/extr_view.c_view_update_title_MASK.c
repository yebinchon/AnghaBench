#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sway_view {TYPE_1__* container; } ;
struct TYPE_4__ {char* title; char* formatted_title; } ;

/* Variables and functions */
 char* FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 size_t FUNC6 (struct sway_view*,char*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 char* FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 char* FUNC10 (struct sway_view*) ; 

void FUNC11(struct sway_view *view, bool force) {
	const char *title = FUNC10(view);

	if (!force) {
		if (title && view->container->title &&
				FUNC7(title, view->container->title) == 0) {
			return;
		}
		if (!title && !view->container->title) {
			return;
		}
	}

	FUNC4(view->container->title);
	FUNC4(view->container->formatted_title);
	if (title) {
		size_t len = FUNC6(view, NULL);
		char *buffer = FUNC0(len + 1, sizeof(char));
		if (!FUNC9(buffer, "Unable to allocate title string")) {
			return;
		}
		FUNC6(view, buffer);

		view->container->title = FUNC8(title);
		view->container->formatted_title = buffer;
	} else {
		view->container->title = NULL;
		view->container->formatted_title = NULL;
	}
	FUNC2(view->container);
	FUNC1(false);

	// Update title after the global font height is updated
	FUNC3(view->container);

	FUNC5(view->container, "title");
}