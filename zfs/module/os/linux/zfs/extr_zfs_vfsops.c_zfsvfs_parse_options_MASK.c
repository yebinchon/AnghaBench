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
typedef  int /*<<< orphan*/  vfs_t ;
struct TYPE_4__ {int /*<<< orphan*/ * from; int /*<<< orphan*/  to; } ;
typedef  TYPE_1__ substring_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int MAX_OPT_ARGS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 char* FUNC5 (char**,char*) ; 
 int FUNC6 (char*,int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zpl_tokens ; 

__attribute__((used)) static int
FUNC8(char *mntopts, vfs_t **vfsp)
{
	vfs_t *tmp_vfsp;
	int error;

	tmp_vfsp = FUNC3(sizeof (vfs_t), KM_SLEEP);

	if (mntopts != NULL) {
		substring_t args[MAX_OPT_ARGS];
		char *tmp_mntopts, *p, *t;
		int token;

		tmp_mntopts = t = FUNC1(mntopts);
		if (tmp_mntopts == NULL)
			return (FUNC0(ENOMEM));

		while ((p = FUNC5(&t, ",")) != NULL) {
			if (!*p)
				continue;

			args[0].to = *(args[0].from = NULL);
			token = FUNC4(p, zpl_tokens, args);
			error = FUNC6(p, token, args, tmp_vfsp);
			if (error) {
				FUNC2(tmp_mntopts);
				FUNC7(tmp_vfsp);
				return (error);
			}
		}

		FUNC2(tmp_mntopts);
	}

	*vfsp = tmp_vfsp;

	return (0);
}