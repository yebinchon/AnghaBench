#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
struct TYPE_15__ {TYPE_1__* data_hash_table; TYPE_3__* header; } ;
struct TYPE_12__ {int /*<<< orphan*/  next_hash_offset; } ;
struct TYPE_14__ {TYPE_2__ data; } ;
struct TYPE_13__ {int /*<<< orphan*/  data_hash_table_size; } ;
struct TYPE_11__ {int /*<<< orphan*/  head_hash_offset; } ;
typedef  TYPE_4__ Object ;
typedef  TYPE_5__ JournalFile ;
typedef  int /*<<< orphan*/  HashItem ;

/* Variables and functions */
 int /*<<< orphan*/  OBJECT_DATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int FUNC1 (TYPE_5__*) ; 
 int FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,size_t,TYPE_4__**) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*) ; 

__attribute__((used)) static int FUNC5(JournalFile *f, uint64_t hash, uint64_t p) {
        uint64_t n, h, q;
        int r;
        FUNC0(f);

        n = FUNC3(f->header->data_hash_table_size) / sizeof(HashItem);
        if (n <= 0)
                return 0;

        r = FUNC1(f);
        if (r < 0)
                return FUNC4(r, "Failed to map data hash table: %m");

        h = hash % n;

        q = FUNC3(f->data_hash_table[h].head_hash_offset);
        while (q != 0) {
                Object *o;

                if (p == q)
                        return 1;

                r = FUNC2(f, OBJECT_DATA, q, &o);
                if (r < 0)
                        return r;

                q = FUNC3(o->data.next_hash_offset);
        }

        return 0;
}