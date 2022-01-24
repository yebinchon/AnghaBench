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
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_5__ {int /*<<< orphan*/  active_paths; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ SeafDirent ;
typedef  TYPE_2__ CalcQuotaDeltaData ;

/* Variables and functions */
 int /*<<< orphan*/  EMPTY_SHA1 ; 
 scalar_t__ S_IFDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,void*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (int n, const char *basedir,
                                        SeafDirent *dirs[], void *vdata,
                                        gboolean *recurse)
{
    CalcQuotaDeltaData *data = vdata;
    SeafDirent *dir1 = dirs[0];
    SeafDirent *dir2 = dirs[1];
    char *path;

    /* When a new empty dir is created, or a dir became empty. */
    if ((!dir2 && dir1 && FUNC2(dir1->id, EMPTY_SHA1) == 0) ||
	(dir2 && dir1 && FUNC2(dir1->id, EMPTY_SHA1) == 0 && FUNC2(dir2->id, EMPTY_SHA1) != 0)) {
        path = FUNC1 (basedir, dir1->name, NULL);
        FUNC0 (data->active_paths, path, (void*)(long)S_IFDIR);
    }

    return 0;
}