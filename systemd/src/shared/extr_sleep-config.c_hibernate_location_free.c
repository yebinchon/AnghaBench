
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int resume; int swap; } ;
typedef TYPE_1__ HibernateLocation ;


 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int swap_entry_free (int ) ;

HibernateLocation* hibernate_location_free(HibernateLocation *hl) {
        if (!hl)
                return ((void*)0);

        swap_entry_free(hl->swap);
        free(hl->resume);

        return mfree(hl);
}
