#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zvol_state_handle_t ;
struct TYPE_7__ {int /*<<< orphan*/  z_sb; int /*<<< orphan*/  z_os; } ;
typedef  TYPE_1__ zfsvfs_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,char*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char**) ; 
 char* FUNC6 (char*,char) ; 
 scalar_t__ FUNC7 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char const*) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(const char *fsname, nvlist_t *innvl, nvlist_t *outnvl)
{
	zfsvfs_t *zfsvfs;
	zvol_state_handle_t *zv;
	char *target = NULL;
	int error;

	(void) FUNC5(innvl, "target", &target);
	if (target != NULL) {
		const char *cp = FUNC6(target, '@');

		/*
		 * The snap name must contain an @, and the part after it must
		 * contain only valid characters.
		 */
		if (cp == NULL ||
		    FUNC7(cp + 1, NULL, NULL) != 0)
			return (FUNC0(EINVAL));
	}

	if (FUNC4(fsname, &zfsvfs) == 0) {
		dsl_dataset_t *ds;

		ds = FUNC2(zfsvfs->z_os);
		error = FUNC9(zfsvfs);
		if (error == 0) {
			int resume_err;

			error = FUNC3(fsname, target, zfsvfs,
			    outnvl);
			resume_err = FUNC8(zfsvfs, ds);
			error = error ? error : resume_err;
		}
		FUNC1(zfsvfs->z_sb);
	} else if ((zv = FUNC11(fsname)) != NULL) {
		error = FUNC3(fsname, target, FUNC12(zv),
		    outnvl);
		FUNC10(zv);
	} else {
		error = FUNC3(fsname, target, NULL, outnvl);
	}
	return (error);
}