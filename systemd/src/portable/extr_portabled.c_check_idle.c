
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int operations; } ;
typedef TYPE_1__ Manager ;



__attribute__((used)) static bool check_idle(void *userdata) {
        Manager *m = userdata;

        return !m->operations;
}
