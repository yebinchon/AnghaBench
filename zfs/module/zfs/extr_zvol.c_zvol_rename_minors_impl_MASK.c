#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* zv_name; int /*<<< orphan*/  zv_state_lock; } ;
typedef  TYPE_1__ zvol_state_t ;
struct TYPE_9__ {int /*<<< orphan*/  (* zv_rename_minor ) (TYPE_1__*,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RW_READER ; 
 char* FUNC0 (char*,char const*,char,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_4__* ops ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,char const*) ; 
 int FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*) ; 
 scalar_t__ zvol_inhibit_dev ; 
 int /*<<< orphan*/  zvol_state_list ; 
 int /*<<< orphan*/  zvol_state_lock ; 

__attribute__((used)) static void
FUNC13(const char *oldname, const char *newname)
{
	zvol_state_t *zv, *zv_next;
	int oldnamelen, newnamelen;

	if (zvol_inhibit_dev)
		return;

	oldnamelen = FUNC9(oldname);
	newnamelen = FUNC9(newname);

	FUNC6(&zvol_state_lock, RW_READER);

	for (zv = FUNC2(&zvol_state_list); zv != NULL; zv = zv_next) {
		zv_next = FUNC3(&zvol_state_list, zv);

		FUNC4(&zv->zv_state_lock);

		if (FUNC8(zv->zv_name, oldname) == 0) {
			ops->zv_rename_minor(zv, newname);
		} else if (FUNC10(zv->zv_name, oldname, oldnamelen) == 0 &&
		    (zv->zv_name[oldnamelen] == '/' ||
		    zv->zv_name[oldnamelen] == '@')) {
			char *name = FUNC0("%s%c%s", newname,
			    zv->zv_name[oldnamelen],
			    zv->zv_name + oldnamelen + 1);
			ops->zv_rename_minor(zv, name);
			FUNC1(name);
		}

		FUNC5(&zv->zv_state_lock);
	}

	FUNC7(&zvol_state_lock);
}