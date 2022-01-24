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
struct TYPE_5__ {void* field_hash_table; int /*<<< orphan*/  field_hash_table_size; struct TYPE_5__* header; int /*<<< orphan*/  field_hash_table_offset; } ;
typedef  TYPE_1__ JournalFile ;

/* Variables and functions */
 int /*<<< orphan*/  OBJECT_FIELD_HASH_TABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(JournalFile *f) {
        uint64_t s, p;
        void *t;
        int r;

        FUNC0(f);
        FUNC0(f->header);

        if (f->field_hash_table)
                return 0;

        p = FUNC2(f->header->field_hash_table_offset);
        s = FUNC2(f->header->field_hash_table_size);

        r = FUNC1(f,
                                 OBJECT_FIELD_HASH_TABLE,
                                 true,
                                 p, s,
                                 &t, NULL);
        if (r < 0)
                return r;

        f->field_hash_table = t;
        return 0;
}