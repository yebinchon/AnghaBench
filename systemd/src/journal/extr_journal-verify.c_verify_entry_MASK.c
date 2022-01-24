#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
struct TYPE_18__ {int /*<<< orphan*/  hash; } ;
struct TYPE_17__ {TYPE_1__* items; } ;
struct TYPE_19__ {TYPE_3__ data; int /*<<< orphan*/  mmap; TYPE_2__ entry; } ;
struct TYPE_16__ {int /*<<< orphan*/  hash; int /*<<< orphan*/  object_offset; } ;
typedef  TYPE_4__ Object ;
typedef  TYPE_4__ MMapFileDescriptor ;
typedef  TYPE_4__ JournalFile ;

/* Variables and functions */
 int EBADMSG ; 
 int /*<<< orphan*/  OBJECT_DATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,size_t,size_t) ; 
 int FUNC2 (TYPE_4__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t,char*) ; 
 size_t FUNC4 (TYPE_4__*) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,size_t,TYPE_4__**) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(
                JournalFile *f,
                Object *o, uint64_t p,
                MMapFileDescriptor *cache_data_fd, uint64_t n_data) {

        uint64_t i, n;
        int r;

        FUNC0(f);
        FUNC0(o);
        FUNC0(cache_data_fd);

        n = FUNC4(o);
        for (i = 0; i < n; i++) {
                uint64_t q, h;
                Object *u;

                q = FUNC6(o->entry.items[i].object_offset);
                h = FUNC6(o->entry.items[i].hash);

                if (!FUNC1(f->mmap, cache_data_fd, n_data, q)) {
                        FUNC3(p, "Invalid data object of entry");
                        return -EBADMSG;
                }

                r = FUNC5(f, OBJECT_DATA, q, &u);
                if (r < 0)
                        return r;

                if (FUNC6(u->data.hash) != h) {
                        FUNC3(p, "Hash mismatch for data object of entry");
                        return -EBADMSG;
                }

                r = FUNC2(f, h, q);
                if (r < 0)
                        return r;
                if (r == 0) {
                        FUNC3(p, "Data object missing from hash table");
                        return -EBADMSG;
                }
        }

        return 0;
}