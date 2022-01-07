
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int environment; } ;
typedef TYPE_1__ ExecParameters ;


 int strv_free (int ) ;

void exec_params_clear(ExecParameters *p) {
        if (!p)
                return;

        strv_free(p->environment);
}
