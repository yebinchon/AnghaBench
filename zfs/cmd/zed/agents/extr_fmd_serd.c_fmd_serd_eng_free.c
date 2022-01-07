
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sg_list; struct TYPE_5__* sg_name; } ;
typedef TYPE_1__ fmd_serd_eng_t ;


 int fmd_serd_eng_reset (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int list_destroy (int *) ;

__attribute__((used)) static void
fmd_serd_eng_free(fmd_serd_eng_t *sgp)
{
 fmd_serd_eng_reset(sgp);
 free(sgp->sg_name);
 list_destroy(&sgp->sg_list);
 free(sgp);
}
