
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t n_devices; int match_parent; int match_tag; int match_sysname; int match_property; int nomatch_sysattr; int match_sysattr; int nomatch_subsystem; int match_subsystem; int * devices; } ;
typedef TYPE_1__ sd_device_enumerator ;


 int assert (TYPE_1__*) ;
 int free (int *) ;
 int hashmap_free_free_free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int sd_device_unref (int ) ;
 int set_free_free (int ) ;

__attribute__((used)) static sd_device_enumerator *device_enumerator_free(sd_device_enumerator *enumerator) {
        size_t i;

        assert(enumerator);

        for (i = 0; i < enumerator->n_devices; i++)
                sd_device_unref(enumerator->devices[i]);

        free(enumerator->devices);
        set_free_free(enumerator->match_subsystem);
        set_free_free(enumerator->nomatch_subsystem);
        hashmap_free_free_free(enumerator->match_sysattr);
        hashmap_free_free_free(enumerator->nomatch_sysattr);
        hashmap_free_free_free(enumerator->match_property);
        set_free_free(enumerator->match_sysname);
        set_free_free(enumerator->match_tag);
        set_free_free(enumerator->match_parent);

        return mfree(enumerator);
}
