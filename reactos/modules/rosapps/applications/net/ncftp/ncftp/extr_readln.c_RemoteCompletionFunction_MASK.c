#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rpath ;
struct TYPE_6__ {TYPE_1__** vec; } ;
struct TYPE_5__ {char const* relname; scalar_t__ type; } ;
typedef  TYPE_1__** FileInfoVec ;
typedef  TYPE_1__* FileInfoPtr ;
typedef  TYPE_3__* FileInfoListPtr ;

/* Variables and functions */
 TYPE_3__* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gRemoteCWD ; 
 char gl_completion_exact_match_extra_char ; 
 scalar_t__ FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char const*,size_t) ; 
 void* FUNC9 (char const*,char) ; 

__attribute__((used)) static char *
FUNC10(const char *text, int state, int fTypeFilter)
{
	char rpath[256];
	char *cp;
	char *cp2;
	const char *textbasename;
	int fType;
	FileInfoPtr diritemp;
	FileInfoListPtr filp;
	int textdirlen;
	size_t tbnlen;
	size_t flen, mlen;
	static FileInfoVec diritemv;
	static int i;

	textbasename = FUNC9(text, '/');
	if (textbasename == NULL) {
		textbasename = text;
		textdirlen = -1;
	} else {
		textdirlen = (int) (textbasename - text);
		textbasename++;
	}
	tbnlen = FUNC7(textbasename);

	if (state == 0) {
		if (text[0] == '\0') {
			/* Special case when they do "get <TAB><TAB> " */
			FUNC3(rpath, gRemoteCWD);
		} else {
			FUNC1(rpath, sizeof(rpath), gRemoteCWD, text);
			if (text[FUNC7(text) - 1] == '/') {
				/* Special case when they do "get /dir1/dir2/<TAB><TAB>" */
				FUNC2(rpath, "/");
			}
			cp2 = FUNC9(rpath, '/');
			if (cp2 == NULL) {
				return NULL;
			} else if (cp2 == rpath) {
				/* Item in root directory. */
				cp2++;
			}
			*cp2 = '\0';
		}

		filp = FUNC0(rpath);
		if (filp == NULL)
			return NULL;

		diritemv = filp->vec;
		if (diritemv == NULL)
			return NULL;

		i = 0;
	}

	for ( ; ; ) {
		diritemp = diritemv[i];
		if (diritemp == NULL)
			break;

		i++;
		fType = (int) diritemp->type;
		if ((fTypeFilter == 0) || (fType == fTypeFilter) || (fType == /* symlink */ 'l')) {
			if (FUNC8(textbasename, diritemp->relname, tbnlen) == 0) {
				flen = FUNC7(diritemp->relname);
				if (textdirlen < 0) {
					mlen = flen + 2;
					cp = (char *) FUNC4(mlen);
					if (cp == NULL)
						return (NULL);
					(void) FUNC5(cp, diritemp->relname, mlen);
				} else {
					mlen = textdirlen + 1 + flen + 2;
					cp = (char *) FUNC4(mlen);
					if (cp == NULL)
						return (NULL);
					(void) FUNC5(cp, text, (size_t) textdirlen);
					cp[textdirlen] = '/';
					(void) FUNC6(cp + textdirlen + 1, diritemp->relname);
				}
				if (fType == 'd') {
					gl_completion_exact_match_extra_char = '/';
				} else {
					gl_completion_exact_match_extra_char = ' ';
				}
				return cp;
			}
		}
	}
	return NULL;
}