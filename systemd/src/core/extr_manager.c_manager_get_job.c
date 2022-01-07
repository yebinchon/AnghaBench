
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int jobs; } ;
typedef TYPE_1__ Manager ;
typedef int Job ;


 int UINT32_TO_PTR (int ) ;
 int assert (TYPE_1__*) ;
 int * hashmap_get (int ,int ) ;

Job *manager_get_job(Manager *m, uint32_t id) {
        assert(m);

        return hashmap_get(m->jobs, UINT32_TO_PTR(id));
}
