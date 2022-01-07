
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int object_offset; } ;
typedef TYPE_1__ EntryItem ;


 int CMP (int ,int ) ;
 int le64toh (int ) ;

__attribute__((used)) static int entry_item_cmp(const EntryItem *a, const EntryItem *b) {
        return CMP(le64toh(a->object_offset), le64toh(b->object_offset));
}
