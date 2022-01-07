
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* value; struct TYPE_4__* result; struct TYPE_4__* signature; struct TYPE_4__* name; struct TYPE_4__* interface; } ;
typedef TYPE_1__ Member ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void member_free(Member *m) {
        if (!m)
                return;

        free(m->interface);
        free(m->name);
        free(m->signature);
        free(m->result);
        free(m->value);
        free(m);
}
