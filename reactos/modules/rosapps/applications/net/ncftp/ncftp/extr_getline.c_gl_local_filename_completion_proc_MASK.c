#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ffd ;
struct TYPE_5__ {char* cFileName; int dwFileAttributes; } ;
typedef  TYPE_1__ WIN32_FIND_DATA ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_NO_MORE_FILES ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/ * INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC4 (char) ; 
 char LOCAL_PATH_DELIM ; 
 char* LOCAL_PATH_DELIM_STR ; 
 char* FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char gl_completion_exact_match_extra_char ; 
 char* gl_home_dir ; 
 char** gl_matchlist ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (char*,size_t) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 
 int FUNC15 (char const*) ; 

char *
FUNC16(const char *start, int idx)
{
	static HANDLE searchHandle = NULL;
	static int filepfxoffset;
	static size_t filepfxlen;

	WIN32_FIND_DATA ffd;
	DWORD dwErr;
	char *cp, *c2, ch;
	const char *filepfx;
	const char *dirtoopen, *name;
	char *dirtoopen1, *dirtoopen2;
	size_t len, len2;

	if (idx == 0) {
		if (searchHandle != NULL) {
			/* shouldn't get here! */
			FUNC0(searchHandle);
			searchHandle = NULL;
		}
	}


	if (searchHandle == NULL) {
		dirtoopen1 = NULL;
		dirtoopen2 = NULL;
		cp = FUNC5(start);
		if (cp == start) {
			dirtoopen = LOCAL_PATH_DELIM_STR;	/* root dir */
			filepfxoffset = 1;
		} else if (cp == NULL) {
			dirtoopen = ".";
			filepfxoffset = 0;
		} else {
			len = FUNC15(start) + 1;
			dirtoopen1 = (char *) FUNC9(len);
			if (dirtoopen1 == NULL)
				return NULL;
			FUNC10(dirtoopen1, start, len);
			len = (cp - start);
			dirtoopen1[len] = '\0';
			dirtoopen = dirtoopen1;
			filepfxoffset = (int) ((cp + 1) - start);
		}

		if (FUNC14(dirtoopen, "~") == 0) {
			if (gl_home_dir == NULL)
				FUNC8(NULL);
			if (gl_home_dir == NULL)
				return (NULL);
			dirtoopen = gl_home_dir;
		}

		len = FUNC15(dirtoopen);
		dirtoopen2 = (char *) FUNC9(len + 8);
		if (dirtoopen2 == NULL) {
			if (dirtoopen1 != NULL)
				FUNC7(dirtoopen1);
			return NULL;
		}

		FUNC10(dirtoopen2, dirtoopen, len + 1);
		if (dirtoopen2[len - 1] == LOCAL_PATH_DELIM)
			FUNC10(dirtoopen2 + len, "*.*", (size_t) 4);
		else
			FUNC10(dirtoopen2 + len, "\\*.*", (size_t) 5);

		/* "Open" the directory. */
		FUNC12(&ffd, 0, sizeof(ffd));
		searchHandle = FUNC1(dirtoopen2, &ffd);

		FUNC7(dirtoopen2);
		if (dirtoopen1 != NULL)
			FUNC7(dirtoopen1);

		if (searchHandle == INVALID_HANDLE_VALUE) {
			return NULL;
		}

		filepfx = start + filepfxoffset;
		filepfxlen = FUNC15(filepfx);
	} else {
		/* assumes "start" is same for each iteration. */
		filepfx = start + filepfxoffset;
		goto next;
	}

	for (;;) {

		name = ffd.cFileName;
		if ((name[0] == '.') && ((name[1] == '\0') || ((name[1] == '.') && (name[2] == '\0'))))
			goto next;	/* Skip . and .. */

		if ((filepfxlen == 0) || (FUNC6(name, filepfx, filepfxlen) == 0)) {
			/* match */
			len = FUNC15(name);
			cp = (char *) FUNC9(filepfxoffset + len + 4 /* spare */ + 1 /* NUL */);
			*cp = '\0';
			if (filepfxoffset > 0)
				FUNC10(cp, start, filepfxoffset);
			FUNC10(cp + filepfxoffset, name, len + 1);
			if (ffd.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) {
				/* Embed file type with name. */
				c2 = cp + filepfxoffset + len + 1;
				*c2++ = '\0';
				*c2++ = 'd';
				*c2 = '\0';
			} else {
				c2 = cp + filepfxoffset + len + 1;
				*c2++ = '\0';
				*c2++ = '-';
				*c2 = '\0';
			}
			return (cp);
		}

next:
		if (!FUNC2(searchHandle, &ffd)) {
			dwErr = FUNC3();
			if (dwErr != ERROR_NO_MORE_FILES) {
				FUNC0(searchHandle);
				searchHandle = NULL;
				return NULL;
			}

			/* no more items */
			FUNC0(searchHandle);
			searchHandle = NULL;

			if (idx == 1) {
				/* There was exactly one match.
				 * In this special case, we
				 * want to append a \ instead
				 * of a space.
				 */
				cp = gl_matchlist[0];
				ch = (char) cp[FUNC15(cp) + 2];
				if (ch == (char) 'd')
					gl_completion_exact_match_extra_char = LOCAL_PATH_DELIM;

				if ((cp[0] == '~') && ((cp[1] == '\0') || (FUNC4(cp[1])))) {
					len = FUNC15(cp + 1) + /* NUL */ 1;
					len2 = FUNC15(gl_home_dir);
					if (FUNC4(gl_home_dir[len2 - 1]))
						len2--;
					cp = (char *) FUNC13(gl_matchlist[0], len + len2 + 4);
					if (cp == NULL) {
						cp = gl_matchlist[0];
					} else {
						FUNC11(cp + len2, cp + 1, len);
						FUNC10(cp, gl_home_dir, len2);
						c2 = cp + len + len2;
						*c2++ = '\0';
						*c2++ = ch;
						*c2 = '\0';
						gl_matchlist[0] = cp;
					}
				}
			}
			break;
		}
	}
	return (NULL);
}