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
struct run_request {char const** argv; } ;
struct request_info {int /*<<< orphan*/  name; } ;
struct keymap {int /*<<< orphan*/  name; } ;
typedef  enum request { ____Placeholder_request } request ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct run_request const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char const*,...) ; 

__attribute__((used)) static bool
FUNC3(void *data, const char *group, struct keymap *keymap,
		       enum request request, const char *key,
		       const struct request_info *req_info,
		       const struct run_request *run_req)
{
	FILE *file = data;

	if (group && !FUNC2(file, "\n# %s", group))
		return false;

	if (!FUNC2(file, "\nbind %-10s %-15s ", FUNC0(keymap->name), key))
		return false;

	if (req_info) {
		return FUNC2(file, "%s", FUNC0(req_info->name));

	} else {
		const char *sep = FUNC1(run_req);
		int i;

		for (i = 0; run_req->argv[i]; i++) {
			if (!FUNC2(file, "%s%s", sep, run_req->argv[i]))
				return false;
			sep = " ";
		}

		return true;
	}
}