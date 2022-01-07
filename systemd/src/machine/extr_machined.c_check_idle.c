
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int machines; scalar_t__ operations; } ;
typedef TYPE_1__ Manager ;


 int hashmap_isempty (int ) ;
 int manager_gc (TYPE_1__*,int) ;

__attribute__((used)) static bool check_idle(void *userdata) {
        Manager *m = userdata;

        if (m->operations)
                return 0;

        manager_gc(m, 1);

        return hashmap_isempty(m->machines);
}
