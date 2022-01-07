
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* color; scalar_t__ type; } ;
typedef TYPE_1__ TableData ;


 scalar_t__ TABLE_EMPTY ;
 char const* ansi_grey () ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static const char* table_data_color(TableData *d) {
        assert(d);

        if (d->color)
                return d->color;


        if (d->type == TABLE_EMPTY)
                return ansi_grey();

        return ((void*)0);
}
