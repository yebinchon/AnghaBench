
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* parameter; } ;
typedef TYPE_1__ Condition ;


 int assert (TYPE_1__*) ;
 int free (TYPE_1__*) ;

void condition_free(Condition *c) {
        assert(c);

        free(c->parameter);
        free(c);
}
