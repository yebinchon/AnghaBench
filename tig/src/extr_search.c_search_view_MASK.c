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
typedef  enum status_code { ____Placeholder_status_code } status_code ;
typedef  enum request { ____Placeholder_request } request ;
struct TYPE_2__ {scalar_t__* search; } ;

/* Variables and functions */
 int REQ_SEARCH ; 
 TYPE_1__ argv_env ; 
 int /*<<< orphan*/  FUNC0 (struct view*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct view*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void
FUNC8(struct view *view, enum request request)
{
	const char *prompt = request == REQ_SEARCH ? "/" : "?";
	char *search = FUNC2(prompt);

	if (search && *search) {
		enum status_code code;

		FUNC6(argv_env.search, search, FUNC7(search));
		code = FUNC5(view, request);
		FUNC3("%s", FUNC1(code));
	} else if (search && *argv_env.search) {
		FUNC0(view, request);
	} else {
		FUNC4();
	}
}