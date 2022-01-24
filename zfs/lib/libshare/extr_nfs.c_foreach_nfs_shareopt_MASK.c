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
typedef  int (* nfs_shareopt_callback_t ) (char*,char*,void*) ;

/* Variables and functions */
 int SA_NO_MEMORY ; 
 int SA_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(const char *shareopts,
    nfs_shareopt_callback_t callback, void *cookie)
{
	char *shareopts_dup, *opt, *cur, *value;
	int was_nul, rc;

	if (shareopts == NULL)
		return (SA_OK);

	shareopts_dup = FUNC2(shareopts);

	if (shareopts_dup == NULL)
		return (SA_NO_MEMORY);

	opt = shareopts_dup;
	was_nul = 0;

	while (1) {
		cur = opt;

		while (*cur != ',' && *cur != '\0')
			cur++;

		if (*cur == '\0')
			was_nul = 1;

		*cur = '\0';

		if (cur > opt) {
			value = FUNC1(opt, '=');

			if (value != NULL) {
				*value = '\0';
				value++;
			}

			rc = callback(opt, value, cookie);

			if (rc != SA_OK) {
				FUNC0(shareopts_dup);
				return (rc);
			}
		}

		opt = cur + 1;

		if (was_nul)
			break;
	}

	FUNC0(shareopts_dup);

	return (0);
}