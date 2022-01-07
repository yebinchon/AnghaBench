
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int changed; int space_changed; int space_size; int space; int deleting; } ;
typedef TYPE_1__ chunk ;
typedef int LIST_ENTRY ;


 int space_list_subtract2 (int *,int *,int ,int ,TYPE_1__*,int *) ;

void space_list_subtract(chunk* c, bool deleting, uint64_t address, uint64_t length, LIST_ENTRY* rollback) {
    LIST_ENTRY* list;

    list = deleting ? &c->deleting : &c->space;

    c->changed = 1;
    c->space_changed = 1;

    space_list_subtract2(list, deleting ? ((void*)0) : &c->space_size, address, length, c, rollback);
}
