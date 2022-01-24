#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct view {int dummy; } ;
struct help_request_iterator {struct view* member_0; } ;
struct TYPE_2__ {char* text; } ;
struct help {TYPE_1__ data; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
typedef  enum open_flags { ____Placeholder_open_flags } open_flags ;

/* Variables and functions */
 int ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  LINE_DEFAULT ; 
 int /*<<< orphan*/  LINE_HEADER ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct view*,struct help**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct help_request_iterator*,int) ; 
 int /*<<< orphan*/  help_keys_visitor ; 
 int /*<<< orphan*/  FUNC3 (struct view*) ; 

__attribute__((used)) static enum status_code
FUNC4(struct view *view, enum open_flags flags)
{
	struct help_request_iterator iterator = { view };
	struct help *help;

	FUNC3(view);

	if (!FUNC0(view, &help, NULL, LINE_HEADER))
		return ERROR_OUT_OF_MEMORY;
	help->data.text = "Quick reference for tig keybindings:";

	if (!FUNC0(view, &help, NULL, LINE_DEFAULT))
		return ERROR_OUT_OF_MEMORY;
	help->data.text = "";

	return FUNC2(help_keys_visitor, &iterator, true)
		? SUCCESS : FUNC1("Failed to render key bindings");
}