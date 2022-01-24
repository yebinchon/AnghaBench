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
struct TYPE_5__ {int /*<<< orphan*/  checked_objs; int /*<<< orphan*/ ** pret; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ SeafDirent ;
typedef  int /*<<< orphan*/  GList ;
typedef  TYPE_2__ CalcFsListData ;

/* Variables and functions */
 int /*<<< orphan*/  EMPTY_SHA1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (int n, const char *basedir, SeafDirent *files[], void *vdata)
{
    SeafDirent *file1 = files[0];
    SeafDirent *file2 = files[1];
    CalcFsListData *data = vdata;
    GList **pret = data->pret;
    int dummy;

    if (!file1 || FUNC4 (file1->id, EMPTY_SHA1) == 0)
        return 0;

    if (FUNC1 (data->checked_objs, file1->id))
        return 0;

    if (!file2 || FUNC4 (file1->id, file2->id) != 0) {
        *pret = FUNC2 (*pret, FUNC3(file1->id));
        FUNC0 (data->checked_objs, FUNC3(file1->id), &dummy);
    }

    return 0;
}