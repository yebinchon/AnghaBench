
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* param; struct TYPE_4__* name; } ;
typedef TYPE_1__ UnitCondition ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void unit_condition_free(UnitCondition *c) {
        if (!c)
                return;

        free(c->name);
        free(c->param);
        free(c);
}
