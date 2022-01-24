#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* first; } ;
struct TYPE_4__ {char* lname; char* relname; struct TYPE_4__* next; } ;
typedef  TYPE_1__* FileInfoPtr ;
typedef  TYPE_2__* FileInfoListPtr ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char**,char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 char* FUNC4 (char const*,char) ; 

int
FUNC5(FileInfoListPtr dst, const char *srcdir, const char *dstdir, int nochop)
{
	FileInfoPtr lp, lp2;
	char *buf;
	char *cp;

	if (srcdir != NULL) {
		cp = FUNC4(srcdir, '/');
		if (cp == NULL)
			cp = FUNC4(srcdir, '\\');
		if (cp != NULL)
			srcdir = cp + 1;
	}
	if (dstdir == NULL)
		dstdir = ".";

	for (lp = dst->first; lp != NULL; lp = lp2) {
		lp2 = lp->next;

		buf = NULL;
		if (nochop != 0) {
			if ((dstdir[0] != '\0') && (FUNC3(dstdir, "."))) {
				if (FUNC0(&buf, dstdir, "/", 0) == NULL)
					goto memerr;
			}
			if (lp->lname != NULL) {
				if (FUNC0(&buf, lp->lname, "/", 0) == NULL)
					goto memerr;
			} else if (srcdir != NULL) {
				if (FUNC0(&buf, srcdir, "/", 0) == NULL)
					goto memerr;
			}
			if (FUNC0(&buf, lp->relname, 0) == NULL)
				goto memerr;
		} else {
			if ((dstdir[0] != '\0') && (FUNC3(dstdir, "."))) {
				cp = FUNC4(lp->relname, '/');
				if (cp == NULL)
					cp = FUNC4(lp->relname, '\\');
				if (cp == NULL) {
					cp = lp->relname;
				} else {
					cp++;
				}
				if (FUNC0(&buf, dstdir, "/", cp, 0) == NULL)
					goto memerr;
			} else {
				cp = FUNC4(lp->relname, '/');
				if (cp == NULL)
					cp = FUNC4(lp->relname, '\\');
				if (cp == NULL) {
					cp = lp->relname;
				} else {
					cp++;
				}
				if (FUNC0(&buf, cp, 0) == NULL)
					goto memerr;
			}
		}
		if (buf == NULL) {
memerr:
			return (-1);
		}
		if (lp->lname != NULL) {
			FUNC2(lp->lname);
			lp->lname = NULL;
		}
		lp->lname = buf;
		FUNC1(lp->lname);
	}
	return (0);
}