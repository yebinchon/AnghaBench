
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ unit; TYPE_1__* manager; } ;
struct TYPE_5__ {int machine_units; } ;
typedef TYPE_2__ Machine ;


 int assert (TYPE_2__*) ;
 int hashmap_remove (int ,scalar_t__) ;
 scalar_t__ mfree (scalar_t__) ;

void machine_release_unit(Machine *m) {
        assert(m);

        if (!m->unit)
                return;

        (void) hashmap_remove(m->manager->machine_units, m->unit);
        m->unit = mfree(m->unit);
}
