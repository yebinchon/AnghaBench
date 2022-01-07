
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {void* current_xor_hash; int current_boot_id; void* current_monotonic; void* current_realtime; void* current_seqnum; int current_offset; int location_type; } ;
struct TYPE_6__ {int xor_hash; int boot_id; int monotonic; int realtime; int seqnum; } ;
struct TYPE_7__ {TYPE_1__ entry; } ;
typedef TYPE_2__ Object ;
typedef TYPE_3__ JournalFile ;


 int LOCATION_SEEK ;
 void* le64toh (int ) ;

void journal_file_save_location(JournalFile *f, Object *o, uint64_t offset) {
        f->location_type = LOCATION_SEEK;
        f->current_offset = offset;
        f->current_seqnum = le64toh(o->entry.seqnum);
        f->current_realtime = le64toh(o->entry.realtime);
        f->current_monotonic = le64toh(o->entry.monotonic);
        f->current_boot_id = o->entry.boot_id;
        f->current_xor_hash = le64toh(o->entry.xor_hash);
}
