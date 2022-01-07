
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int instances; struct TYPE_5__* pattern; } ;
struct TYPE_4__ {size_t n_rules; TYPE_3__* rules; } ;
typedef TYPE_1__ Presets ;


 int free (TYPE_3__*) ;
 int strv_free (int ) ;

__attribute__((used)) static void presets_freep(Presets *p) {
        size_t i;

        if (!p)
                return;

        for (i = 0; i < p->n_rules; i++) {
                free(p->rules[i].pattern);
                strv_free(p->rules[i].instances);
        }

        free(p->rules);
        p->n_rules = 0;
}
