#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ Buffer; } ;
struct TYPE_19__ {scalar_t__ Flink; } ;
struct TYPE_16__ {TYPE_3__ oldutf8; TYPE_8__* fcb; scalar_t__ parent; TYPE_9__ list_entry; TYPE_2__* dc; TYPE_11__* nonpaged; } ;
typedef  TYPE_4__ file_ref ;
struct TYPE_17__ {int /*<<< orphan*/  fileref_lookaside; int /*<<< orphan*/  fileref_np_lookaside; } ;
typedef  TYPE_5__ device_extension ;
struct TYPE_13__ {int /*<<< orphan*/  Length; } ;
struct TYPE_18__ {TYPE_1__ adsdata; scalar_t__ ads; TYPE_4__* fileref; } ;
struct TYPE_14__ {int /*<<< orphan*/ * fileref; int /*<<< orphan*/  size; } ;
struct TYPE_12__ {int /*<<< orphan*/  fileref_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void FUNC7(device_extension* Vcb, file_ref* fr) {
    // FIXME - do we need a file_ref lock?

    // FIXME - do delete if needed

    FUNC0(&fr->nonpaged->fileref_lock);

    FUNC2(&Vcb->fileref_np_lookaside, fr->nonpaged);

    // FIXME - throw error if children not empty

    if (fr->fcb->fileref == fr)
        fr->fcb->fileref = NULL;

    if (fr->dc) {
        if (fr->fcb->ads)
            fr->dc->size = fr->fcb->adsdata.Length;

        fr->dc->fileref = NULL;
    }

    if (fr->list_entry.Flink)
        FUNC4(&fr->list_entry);

    if (fr->parent)
        FUNC6(fr->parent);

    FUNC5(fr->fcb);

    if (fr->oldutf8.Buffer)
        FUNC1(fr->oldutf8.Buffer);

    FUNC3(&Vcb->fileref_lookaside, fr);
}