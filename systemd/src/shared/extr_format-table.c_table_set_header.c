
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int header; } ;
typedef TYPE_1__ Table ;


 int assert (TYPE_1__*) ;

void table_set_header(Table *t, bool b) {
        assert(t);

        t->header = b;
}
