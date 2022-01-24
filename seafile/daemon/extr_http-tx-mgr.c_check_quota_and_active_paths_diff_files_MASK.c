#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gint64 ;
struct TYPE_7__ {int /*<<< orphan*/  delta; int /*<<< orphan*/  active_paths; } ;
struct TYPE_6__ {scalar_t__ size; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ SeafDirent ;
typedef  TYPE_2__ CalcQuotaDeltaData ;

/* Variables and functions */
 scalar_t__ S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,void*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3 (int n, const char *basedir,
                                         SeafDirent *files[], void *vdata)
{
    CalcQuotaDeltaData *data = vdata;
    SeafDirent *file1 = files[0];
    SeafDirent *file2 = files[1];
    gint64 size1, size2;
    char *path;

    if (file1 && file2) {
        size1 = file1->size;
        size2 = file2->size;
        data->delta += (size1 - size2);

        if (!FUNC0 (file1, file2)) {
            path = FUNC2(basedir, file1->name, NULL);
            FUNC1 (data->active_paths, path, (void*)(long)S_IFREG);
        }
    } else if (file1 && !file2) {
        data->delta += file1->size;

        path = FUNC2 (basedir, file1->name, NULL);
        FUNC1 (data->active_paths, path, (void*)(long)S_IFREG);
    } else if (!file1 && file2) {
        data->delta -= file2->size;
    }

    return 0;
}