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
typedef  int /*<<< orphan*/  sa_handle_impl_t ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  ZFS_SHARETAB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,char) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(sa_handle_impl_t impl_handle)
{
	FILE *fp;
	char line[512];
	char *eol, *pathname, *resource, *fstype, *options, *description;

	fp = FUNC2(ZFS_SHARETAB, "r");

	if (fp == NULL)
		return;

	while (FUNC1(line, sizeof (line), fp) != NULL) {
		eol = line + FUNC6(line) - 1;

		while (eol >= line) {
			if (*eol != '\r' && *eol != '\n')
				break;

			*eol = '\0';
			eol--;
		}

		pathname = line;

		if ((resource = FUNC4(pathname, '\t')) == NULL)
			continue;

		*resource = '\0';
		resource++;

		if ((fstype = FUNC4(resource, '\t')) == NULL)
			continue;

		*fstype = '\0';
		fstype++;

		if ((options = FUNC4(fstype, '\t')) == NULL)
			continue;

		*options = '\0';
		options++;

		if ((description = FUNC4(fstype, '\t')) != NULL) {
			*description = '\0';
			description++;
		}

		if (FUNC5(resource, "-") == 0)
			resource = NULL;

		(void) FUNC3(impl_handle, NULL, pathname, resource,
		    fstype, options, description, NULL, B_TRUE);
	}

	FUNC0(fp);
}