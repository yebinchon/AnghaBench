
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int n_reloading; } ;
typedef TYPE_1__ Manager ;



__attribute__((used)) static Manager* manager_reloading_start(Manager *m) {
        m->n_reloading++;
        return m;
}
