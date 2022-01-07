
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int empty_string; } ;
typedef TYPE_1__ Table ;


 int assert (TYPE_1__*) ;
 int free_and_strdup (int *,char const*) ;

int table_set_empty_string(Table *t, const char *empty) {
        assert(t);

        return free_and_strdup(&t->empty_string, empty);
}
