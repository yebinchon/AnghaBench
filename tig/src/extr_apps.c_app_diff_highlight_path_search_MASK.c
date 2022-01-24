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
typedef  int /*<<< orphan*/  exec_path ;

/* Variables and functions */
 int /*<<< orphan*/  R_OK ; 
 int SIZEOF_MED_STR ; 
 int SIZEOF_STR ; 
 int /*<<< orphan*/  X_OK ; 
 char* _PATH_DEFPATH ; 
 scalar_t__ FUNC0 (char*,int) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char const*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*,char*,char*,char*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static bool
FUNC9(char *dest, size_t destlen, const char *query)
{
	if (!query || !*query)
		return false;

	if (FUNC3(query, '/')) {
		/* can only be interpreted as a fully qualified path */
		FUNC7(dest, destlen, query, FUNC8(query));
		return true;
	}

	const char *env_path = FUNC1("PATH");
	char env_path_plus[SIZEOF_MED_STR];
	char exec_path[SIZEOF_STR];

	if (!env_path || !*env_path)
		env_path = _PATH_DEFPATH;

	if (FUNC0(exec_path, sizeof(exec_path)))
		FUNC5(env_path_plus, "%s:%s/%s:%s/%s:%s/%s:%s/%s",
			      env_path,
			      exec_path, "../../share/git-core/contrib/diff-highlight",
			      exec_path, "../share/git-core/contrib/diff-highlight",
			      exec_path, "../../share/git/contrib/diff-highlight",
			      exec_path, "../share/git/contrib/diff-highlight");
	else
		FUNC6(env_path_plus, env_path, FUNC8(env_path));

	if (!FUNC2(dest, destlen, query, env_path_plus, X_OK)
	    && !FUNC4(query, "diff-highlight")
	    && !FUNC2(dest, destlen, "diff-highlight.perl", env_path_plus, R_OK))
		return false;

	return true;
}