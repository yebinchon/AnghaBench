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
struct passwd {char* pw_name; } ;
typedef  size_t DWORD ;

/* Variables and functions */
 struct passwd* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 scalar_t__ FUNC3 (char*) ; 
 struct passwd* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 

void
FUNC7(char *dst, size_t size)
{
#if defined(WIN32) || defined(_WINDOWS)
	DWORD size1;

	size1 = size - 1;
	if (! GetUserName(dst, &size1))
		(void) strncpy(dst, "unknown", size);
	dst[size - 1] = '\0';
#else
	const char *cp;
	struct passwd *pw;

	pw = NULL;
#ifdef USE_GETPWUID
	/* Try to use getpwuid(), but if we have to, fall back to getpwnam(). */
	if ((pw = getpwuid(getuid())) == NULL)
		pw = GetPwByName();	/* Oh well, try getpwnam() then. */
#else
	/* Try to use getpwnam(), but if we have to, fall back to getpwuid(). */
	if ((pw = FUNC0()) == NULL)
		pw = FUNC4(FUNC5());	/* Try getpwnam() then. */
#endif
	if (pw != NULL)
		cp = pw->pw_name;
	else if ((cp = (const char *) FUNC3("LOGNAME")) == NULL)
			cp = "UNKNOWN";
	(void) FUNC2(dst, cp, size);
#endif
}