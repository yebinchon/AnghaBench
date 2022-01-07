
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ head_entry_seqnum; struct TYPE_4__* header; void* tail_entry_seqnum; } ;
typedef TYPE_1__ JournalFile ;


 int assert (TYPE_1__*) ;
 void* htole64 (scalar_t__) ;
 scalar_t__ le64toh (void*) ;

__attribute__((used)) static uint64_t journal_file_entry_seqnum(JournalFile *f, uint64_t *seqnum) {
        uint64_t r;

        assert(f);
        assert(f->header);

        r = le64toh(f->header->tail_entry_seqnum) + 1;

        if (seqnum) {




                if (*seqnum + 1 > r)
                        r = *seqnum + 1;

                *seqnum = r;
        }

        f->header->tail_entry_seqnum = htole64(r);

        if (f->header->head_entry_seqnum == 0)
                f->header->head_entry_seqnum = htole64(r);

        return r;
}
