
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {TYPE_1__* header; } ;
struct TYPE_5__ {int n_tags; } ;
typedef TYPE_2__ JournalFile ;


 int assert (TYPE_2__*) ;
 int htole64 (scalar_t__) ;
 scalar_t__ le64toh (int ) ;

__attribute__((used)) static uint64_t journal_file_tag_seqnum(JournalFile *f) {
        uint64_t r;

        assert(f);

        r = le64toh(f->header->n_tags) + 1;
        f->header->n_tags = htole64(r);

        return r;
}
