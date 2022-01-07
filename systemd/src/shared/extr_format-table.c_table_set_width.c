
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t width; } ;
typedef TYPE_1__ Table ;


 int assert (TYPE_1__*) ;

void table_set_width(Table *t, size_t width) {
        assert(t);

        t->width = width;
}
