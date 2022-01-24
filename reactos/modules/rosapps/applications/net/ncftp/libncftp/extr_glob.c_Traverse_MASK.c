#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dirent {char* d_name; } ;
struct Stat {int /*<<< orphan*/  st_mode; scalar_t__ st_size; int /*<<< orphan*/  st_mtime; } ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  void* longest_int ;
struct TYPE_3__ {char type; int /*<<< orphan*/ * rlinkto; int /*<<< orphan*/ * plug; void* size; int /*<<< orphan*/  mdtm; void* lname; int /*<<< orphan*/ * rname; void* relname; } ;
typedef  int /*<<< orphan*/  FileInfoListPtr ;
typedef  TYPE_1__ FileInfo ;
typedef  int /*<<< orphan*/  FTPCIPtr ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (char*,struct Stat*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kDoPerror ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 
 struct dirent* FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int FUNC14 (char*) ; 

__attribute__((used)) static void
FUNC15(FTPCIPtr cip, char *fullpath, struct Stat *st, char *relpath, FileInfoListPtr filp)
{
	char *dname;
	struct dirent *dirp;
	mode_t m;
	DIR *dp;
	char *cp;
	char *c2;
	FileInfo fi;

	if (relpath[0] != '\0') {
		fi.relname = FUNC6(relpath);
		fi.rname = NULL;
		fi.lname = FUNC6(fullpath);
		fi.rlinkto = NULL;
		fi.plug = NULL;
		fi.mdtm = st->st_mtime;
		fi.size = (longest_int) st->st_size;
		fi.type = 'd';
		(void) FUNC0(filp, &fi);
	}

	/* Handle directory entry first. */
	cp = fullpath + FUNC14(fullpath);
	*cp++ = '/';
	*cp = '\0';

	c2 = relpath + FUNC14(relpath);
	*c2++ = '/';
	*c2 = '\0';

	if ((dp = FUNC10(fullpath)) == NULL) {
		cp[-1] = '\0';
		c2[-1] = '\0';
		FUNC1(cip, kDoPerror, "could not opendir %s.\n", fullpath);
		return;
	}

	while ((dirp = FUNC11(dp)) != NULL) {
		dname = dirp->d_name;
		if ((dname[0] == '.') && ((dname[1] == '\0') || ((dname[1] == '.') && (dname[2] == '\0'))))
			continue;	/* skip "." and ".." directories. */

		(void) FUNC13(cp, dirp->d_name);	/* append name after slash */
		(void) FUNC13(c2, dirp->d_name);
		if (FUNC2(fullpath, st) < 0) {
			FUNC1(cip, kDoPerror, "could not stat %s.\n", fullpath);
			continue;
		}

		fi.relname = FUNC6(relpath + (((relpath[0] == '/') || (relpath[0] == '\\')) ? 1 : 0));
		fi.rname = NULL;
		fi.lname = FUNC6(fullpath);
		fi.mdtm = st->st_mtime;
		fi.size = (longest_int) st->st_size;
		fi.rlinkto = NULL;
		fi.plug = NULL;

		m = st->st_mode;
		if (FUNC5(m) != 0) {
			/* file */
			fi.type = '-';
			(void) FUNC0(filp, &fi);
		} else if (FUNC3(m)) {
			FUNC15(cip, fullpath, st, relpath, filp);
#ifdef S_ISLNK
		} else if (S_ISLNK(m)) {
			fi.type = 'l';
			fi.rlinkto = calloc(128, 1);
			if (fi.rlinkto != NULL) {
				if (readlink(fullpath, fi.rlinkto, 127) < 0) {
					free(fi.rlinkto);
				} else {
					(void) AddFileInfo(filp, &fi);
				}
			}
#endif	/* S_ISLNK */
		}
	}
	cp[-1] = '\0';
	c2[-1] = '\0';

	(void) FUNC8(dp);
}