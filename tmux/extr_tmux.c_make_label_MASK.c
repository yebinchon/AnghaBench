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
typedef  scalar_t__ uid_t ;
struct stat {int st_mode; scalar_t__ st_uid; } ;

/* Variables and functions */
 scalar_t__ EACCES ; 
 scalar_t__ EEXIST ; 
 scalar_t__ ENOTDIR ; 
 scalar_t__ ERANGE ; 
 int PATH_MAX ; 
 int S_IRWXO ; 
 int /*<<< orphan*/  S_IRWXU ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  _PATH_TMP ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 char const* FUNC7 (scalar_t__) ; 
 int FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char**,char*,char*,...) ; 

__attribute__((used)) static char *
FUNC10(const char *label, char **cause)
{
	char		*base, resolved[PATH_MAX], *path, *s;
	struct stat	 sb;
	uid_t		 uid;

	*cause = NULL;

	if (label == NULL)
		label = "default";
	uid = FUNC3();

	if ((s = FUNC2("TMUX_TMPDIR")) != NULL && *s != '\0')
		FUNC9(&base, "%s/tmux-%ld", s, (long)uid);
	else
		FUNC9(&base, "%s/tmux-%ld", _PATH_TMP, (long)uid);
	if (FUNC6(base, resolved) == NULL &&
	    FUNC8(resolved, base, sizeof resolved) >= sizeof resolved) {
		errno = ERANGE;
		FUNC1(base);
		goto fail;
	}
	FUNC1(base);

	if (FUNC5(resolved, S_IRWXU) != 0 && errno != EEXIST)
		goto fail;
	if (FUNC4(resolved, &sb) != 0)
		goto fail;
	if (!FUNC0(sb.st_mode)) {
		errno = ENOTDIR;
		goto fail;
	}
	if (sb.st_uid != uid || (sb.st_mode & S_IRWXO) != 0) {
		errno = EACCES;
		goto fail;
	}
	FUNC9(&path, "%s/%s", resolved, label);
	return (path);

fail:
	FUNC9(cause, "error creating %s (%s)", resolved, FUNC7(errno));
	return (NULL);
}