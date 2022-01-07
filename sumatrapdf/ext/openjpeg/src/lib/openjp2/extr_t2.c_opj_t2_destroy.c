
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_t2_t ;


 int opj_free (int *) ;

void opj_t2_destroy(opj_t2_t *t2)
{
    if (t2) {
        opj_free(t2);
    }
}
