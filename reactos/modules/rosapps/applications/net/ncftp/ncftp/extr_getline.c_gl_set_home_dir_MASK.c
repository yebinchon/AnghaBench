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
typedef  int /*<<< orphan*/  wdir ;
struct passwd {char* pw_dir; } ;

/* Variables and functions */
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 struct passwd* FUNC4 (char*) ; 
 struct passwd* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* gl_home_dir ; 
 scalar_t__ FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 

void
FUNC13(const char *homedir)
{
	size_t len;
#ifdef __windows__
	const char *homedrive, *homepath;
	char wdir[64];
#else
	struct passwd *pw;
	char *cp;
#endif

	if (gl_home_dir != NULL) {
		FUNC1(gl_home_dir);
		gl_home_dir = NULL;
	}

	if (homedir == NULL) {
#ifdef __windows__
		homedrive = getenv("HOMEDRIVE");
		homepath = getenv("HOMEPATH");
		if ((homedrive != NULL) && (homepath != NULL)) {
			len = strlen(homedrive) + strlen(homepath) + 1;
			gl_home_dir = (char *) malloc(len);
			if (gl_home_dir != NULL) {
				strcpy(gl_home_dir, homedrive);
				strcat(gl_home_dir, homepath);
				return;
			}
		}

		wdir[0] = '\0';
		if (GetWindowsDirectory(wdir, sizeof(wdir) - 1) < 1)
			(void) strncpy(wdir, ".", sizeof(wdir));
		else if (wdir[1] == ':') {
			wdir[2] = '\\';
			wdir[3] = '\0';
		}
		homedir = wdir;
#else
		cp = (char *) FUNC3();
		if (cp == NULL) {
			cp = (char *) FUNC2("LOGNAME");
			if (cp == NULL)
				cp = (char *) FUNC2("USER");
		}
		pw = NULL;
		if (cp != NULL)
			pw = FUNC4(cp);
		if (pw == NULL)
			pw = FUNC5(FUNC6());
		if (pw == NULL)
			return;	/* hell with it */
		homedir = pw->pw_dir;
#endif
	}

	len = FUNC11(homedir) + /* NUL */ 1;
	gl_home_dir = (char *) FUNC7(len);
	if (gl_home_dir != NULL) {
		FUNC8(gl_home_dir, homedir, len);
	}
}