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
struct TYPE_2__ {char const* security; int (* callback ) (int /*<<< orphan*/ ,char*,char const*,char const*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  cookie; int /*<<< orphan*/  sharepath; } ;
typedef  TYPE_1__ nfs_host_cookie_t ;

/* Variables and functions */
 int SA_NO_MEMORY ; 
 int SA_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 char* FUNC4 (char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(const char *opt, const char *value, void *pcookie)
{
	int rc;
	const char *access;
	char *host_dup, *host, *next;
	nfs_host_cookie_t *udata = (nfs_host_cookie_t *)pcookie;

#ifdef DEBUG
	fprintf(stderr, "foreach_nfs_host_cb: key=%s, value=%s\n", opt, value);
#endif

	if (FUNC3(opt, "sec") == 0)
		udata->security = value;

	if (FUNC3(opt, "rw") == 0 || FUNC3(opt, "ro") == 0) {
		if (value == NULL)
			value = "*";

		access = opt;

		host_dup = FUNC4(value);

		if (host_dup == NULL)
			return (SA_NO_MEMORY);

		host = host_dup;

		do {
			next = FUNC2(host, ':');
			if (next != NULL) {
				*next = '\0';
				next++;
			}

			rc = udata->callback(udata->sharepath, host,
			    udata->security, access, udata->cookie);

			if (rc != SA_OK) {
				FUNC1(host_dup);

				return (rc);
			}

			host = next;
		} while (host != NULL);

		FUNC1(host_dup);
	}

	return (SA_OK);
}