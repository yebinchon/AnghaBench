#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  version; int /*<<< orphan*/  dents; } ;
struct TYPE_11__ {int /*<<< orphan*/ * data; struct TYPE_11__* next; } ;
typedef  int /*<<< orphan*/  SeafDirent ;
typedef  int /*<<< orphan*/  SeafDir ;
typedef  TYPE_1__ GList ;
typedef  int /*<<< orphan*/  ChangeSetDirent ;
typedef  TYPE_2__ ChangeSetDir ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compare_dents ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static SeafDir *
FUNC6 (ChangeSetDir *dir)
{
    GList *dents = NULL, *seaf_dents = NULL;
    GList *ptr;
    ChangeSetDirent *dent;
    SeafDirent *seaf_dent;
    SeafDir *seaf_dir;

    dents = FUNC1 (dir->dents);
    for (ptr = dents; ptr; ptr = ptr->next) {
        dent = ptr->data;
        seaf_dent = FUNC0 (dir->version, dent);
        seaf_dents = FUNC3 (seaf_dents, seaf_dent);
    }
    /* Sort it in descending order. */
    seaf_dents = FUNC4 (seaf_dents, compare_dents);

    /* seaf_dir_new() computes the dir id. */
    seaf_dir = FUNC5 (NULL, seaf_dents, dir->version);

    FUNC2 (dents);
    return seaf_dir;
}