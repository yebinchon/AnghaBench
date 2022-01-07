
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* header; int hmac; int seal; } ;
struct TYPE_6__ {int data_hash_table_offset; int seqnum_id; int file_id; int * signature; } ;
typedef TYPE_2__ JournalFile ;


 int Header ;
 int arena_size ;
 int assert (TYPE_2__*) ;
 int boot_id ;
 int data_hash_table_offset ;
 int file_id ;
 int gcry_md_write (int ,int *,scalar_t__) ;
 int journal_file_hmac_start (TYPE_2__*) ;
 scalar_t__ offsetof (int ,int ) ;
 int seqnum_id ;
 int signature ;
 int state ;
 int tail_object_offset ;

int journal_file_hmac_put_header(JournalFile *f) {
        int r;

        assert(f);

        if (!f->seal)
                return 0;

        r = journal_file_hmac_start(f);
        if (r < 0)
                return r;
        gcry_md_write(f->hmac, f->header->signature, offsetof(Header, state) - offsetof(Header, signature));
        gcry_md_write(f->hmac, &f->header->file_id, offsetof(Header, boot_id) - offsetof(Header, file_id));
        gcry_md_write(f->hmac, &f->header->seqnum_id, offsetof(Header, arena_size) - offsetof(Header, seqnum_id));
        gcry_md_write(f->hmac, &f->header->data_hash_table_offset, offsetof(Header, tail_object_offset) - offsetof(Header, data_hash_table_offset));

        return 0;
}
