
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int os_release; int machine_info; int hostname; TYPE_1__* partitions; } ;
struct TYPE_7__ {int decrypted_node; int decrypted_fstype; int node; int fstype; } ;
typedef TYPE_2__ DissectedImage ;


 unsigned int _PARTITION_DESIGNATOR_MAX ;
 int free (int ) ;
 TYPE_2__* mfree (TYPE_2__*) ;
 int strv_free (int ) ;

DissectedImage* dissected_image_unref(DissectedImage *m) {
        unsigned i;

        if (!m)
                return ((void*)0);

        for (i = 0; i < _PARTITION_DESIGNATOR_MAX; i++) {
                free(m->partitions[i].fstype);
                free(m->partitions[i].node);
                free(m->partitions[i].decrypted_fstype);
                free(m->partitions[i].decrypted_node);
        }

        free(m->hostname);
        strv_free(m->machine_info);
        strv_free(m->os_release);

        return mfree(m);
}
