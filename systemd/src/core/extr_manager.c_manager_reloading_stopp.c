
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ n_reloading; } ;
typedef TYPE_1__ Manager ;


 int assert (int) ;

__attribute__((used)) static void manager_reloading_stopp(Manager **m) {
        if (*m) {
                assert((*m)->n_reloading > 0);
                (*m)->n_reloading--;
        }
}
