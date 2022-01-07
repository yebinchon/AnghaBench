
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int changed; int space_changed; int deleting; } ;
typedef TYPE_1__ chunk ;
typedef int LIST_ENTRY ;


 int TRACE (char*,TYPE_1__*,int ,int ,int *) ;
 int space_list_add2 (int *,int *,int ,int ,TYPE_1__*,int *) ;

void space_list_add(chunk* c, uint64_t address, uint64_t length, LIST_ENTRY* rollback) {
    TRACE("(%p, %I64x, %I64x, %p)\n", c, address, length, rollback);

    c->changed = 1;
    c->space_changed = 1;

    space_list_add2(&c->deleting, ((void*)0), address, length, c, rollback);
}
