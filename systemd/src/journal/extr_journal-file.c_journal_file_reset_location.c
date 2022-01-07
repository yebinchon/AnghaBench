
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ current_xor_hash; int current_boot_id; scalar_t__ current_monotonic; scalar_t__ current_realtime; scalar_t__ current_seqnum; scalar_t__ current_offset; int location_type; } ;
typedef TYPE_1__ JournalFile ;


 int LOCATION_HEAD ;
 int zero (int ) ;

void journal_file_reset_location(JournalFile *f) {
        f->location_type = LOCATION_HEAD;
        f->current_offset = 0;
        f->current_seqnum = 0;
        f->current_realtime = 0;
        f->current_monotonic = 0;
        zero(f->current_boot_id);
        f->current_xor_hash = 0;
}
