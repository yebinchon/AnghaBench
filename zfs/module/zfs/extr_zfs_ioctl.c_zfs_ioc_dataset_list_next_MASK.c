#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* zc_name; int /*<<< orphan*/  zc_cookie; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  ESRCH ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 size_t FUNC6 (char*) ; 
 char* FUNC7 (char*,char) ; 
 scalar_t__ FUNC8 (char*) ; 
 int FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC10(zfs_cmd_t *zc)
{
	objset_t *os;
	int error;
	char *p;
	size_t orig_len = FUNC6(zc->zc_name);

top:
	if ((error = FUNC2(zc->zc_name, FTAG, &os))) {
		if (error == ENOENT)
			error = FUNC0(ESRCH);
		return (error);
	}

	p = FUNC7(zc->zc_name, '/');
	if (p == NULL || p[1] != '\0')
		(void) FUNC5(zc->zc_name, "/", sizeof (zc->zc_name));
	p = zc->zc_name + FUNC6(zc->zc_name);

	do {
		error = FUNC1(os,
		    sizeof (zc->zc_name) - (p - zc->zc_name), p,
		    NULL, &zc->zc_cookie);
		if (error == ENOENT)
			error = FUNC0(ESRCH);
	} while (error == 0 && FUNC8(zc->zc_name));
	FUNC3(os, FTAG);

	/*
	 * If it's an internal dataset (ie. with a '$' in its name),
	 * don't try to get stats for it, otherwise we'll return ENOENT.
	 */
	if (error == 0 && FUNC4(zc->zc_name, '$') == NULL) {
		error = FUNC9(zc); /* fill in the stats */
		if (error == ENOENT) {
			/* We lost a race with destroy, get the next one. */
			zc->zc_name[orig_len] = '\0';
			goto top;
		}
	}
	return (error);
}