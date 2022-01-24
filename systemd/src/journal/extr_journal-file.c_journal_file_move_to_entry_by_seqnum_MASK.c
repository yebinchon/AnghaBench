#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  direction_t ;
struct TYPE_5__ {int /*<<< orphan*/  n_entries; struct TYPE_5__* header; int /*<<< orphan*/  entry_array_offset; } ;
typedef  int /*<<< orphan*/  Object ;
typedef  TYPE_1__ JournalFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_object_seqnum ; 

int FUNC3(
                JournalFile *f,
                uint64_t seqnum,
                direction_t direction,
                Object **ret,
                uint64_t *offset) {
        FUNC0(f);
        FUNC0(f->header);

        return FUNC1(f,
                                    FUNC2(f->header->entry_array_offset),
                                    FUNC2(f->header->n_entries),
                                    seqnum,
                                    test_object_seqnum,
                                    direction,
                                    ret, offset, NULL);
}