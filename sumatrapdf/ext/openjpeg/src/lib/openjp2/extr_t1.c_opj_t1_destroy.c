
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; int flags; struct TYPE_4__* cblkdatabuffer; int encoder; } ;
typedef TYPE_1__ opj_t1_t ;


 int opj_aligned_free (int) ;
 int opj_free (TYPE_1__*) ;

void opj_t1_destroy(opj_t1_t *p_t1)
{
    if (! p_t1) {
        return;
    }


    if (!p_t1->encoder && p_t1->data) {
        opj_aligned_free(p_t1->data);
        p_t1->data = 00;
    }

    if (p_t1->flags) {
        opj_aligned_free(p_t1->flags);
        p_t1->flags = 00;
    }

    opj_free(p_t1->cblkdatabuffer);

    opj_free(p_t1);
}
