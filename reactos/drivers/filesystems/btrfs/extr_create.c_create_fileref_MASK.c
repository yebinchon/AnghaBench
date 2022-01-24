#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_9__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int refcount; TYPE_9__* nonpaged; int /*<<< orphan*/  children; } ;
typedef  TYPE_1__ file_ref ;
struct TYPE_11__ {int /*<<< orphan*/  fileref_lookaside; int /*<<< orphan*/  fileref_np_lookaside; } ;
typedef  TYPE_2__ device_extension ;
struct TYPE_12__ {int /*<<< orphan*/  fileref_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_9__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_1__*) ; 

file_ref* FUNC8(device_extension* Vcb) {
    file_ref* fr;

    fr = FUNC2(&Vcb->fileref_lookaside);
    if (!fr) {
        FUNC0("out of memory\n");
        return NULL;
    }

    FUNC6(fr, sizeof(file_ref));

    fr->nonpaged = FUNC1(&Vcb->fileref_np_lookaside);
    if (!fr->nonpaged) {
        FUNC0("out of memory\n");
        FUNC3(&Vcb->fileref_lookaside, fr);
        return NULL;
    }

    fr->refcount = 1;

#ifdef DEBUG_FCB_REFCOUNTS
    WARN("fileref %p: refcount now 1\n", fr);
#endif

    FUNC5(&fr->children);

    FUNC4(&fr->nonpaged->fileref_lock);

    return fr;
}