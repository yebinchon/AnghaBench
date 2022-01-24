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
struct TYPE_7__ {TYPE_1__* header; int /*<<< orphan*/  hmac; int /*<<< orphan*/  seal; } ;
struct TYPE_6__ {int /*<<< orphan*/  data_hash_table_offset; int /*<<< orphan*/  seqnum_id; int /*<<< orphan*/  file_id; int /*<<< orphan*/ * signature; } ;
typedef  TYPE_2__ JournalFile ;

/* Variables and functions */
 int /*<<< orphan*/  Header ; 
 int /*<<< orphan*/  arena_size ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  boot_id ; 
 int /*<<< orphan*/  data_hash_table_offset ; 
 int /*<<< orphan*/  file_id ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  seqnum_id ; 
 int /*<<< orphan*/  signature ; 
 int /*<<< orphan*/  state ; 
 int /*<<< orphan*/  tail_object_offset ; 

int FUNC4(JournalFile *f) {
        int r;

        FUNC0(f);

        if (!f->seal)
                return 0;

        r = FUNC2(f);
        if (r < 0)
                return r;

        /* All but state+reserved, boot_id, arena_size,
         * tail_object_offset, n_objects, n_entries,
         * tail_entry_seqnum, head_entry_seqnum, entry_array_offset,
         * head_entry_realtime, tail_entry_realtime,
         * tail_entry_monotonic, n_data, n_fields, n_tags,
         * n_entry_arrays. */

        FUNC1(f->hmac, f->header->signature, FUNC3(Header, state) - FUNC3(Header, signature));
        FUNC1(f->hmac, &f->header->file_id, FUNC3(Header, boot_id) - FUNC3(Header, file_id));
        FUNC1(f->hmac, &f->header->seqnum_id, FUNC3(Header, arena_size) - FUNC3(Header, seqnum_id));
        FUNC1(f->hmac, &f->header->data_hash_table_offset, FUNC3(Header, tail_object_offset) - FUNC3(Header, data_hash_table_offset));

        return 0;
}