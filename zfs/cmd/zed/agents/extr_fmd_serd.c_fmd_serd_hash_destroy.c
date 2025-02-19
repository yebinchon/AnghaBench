
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint_t ;
struct TYPE_7__ {size_t sh_hashlen; TYPE_2__** sh_hash; } ;
typedef TYPE_1__ fmd_serd_hash_t ;
struct TYPE_8__ {struct TYPE_8__* sg_next; } ;
typedef TYPE_2__ fmd_serd_eng_t ;


 int bzero (TYPE_1__*,int) ;
 int fmd_serd_eng_free (TYPE_2__*) ;
 int free (TYPE_2__**) ;

void
fmd_serd_hash_destroy(fmd_serd_hash_t *shp)
{
 fmd_serd_eng_t *sgp, *ngp;
 uint_t i;

 for (i = 0; i < shp->sh_hashlen; i++) {
  for (sgp = shp->sh_hash[i]; sgp != ((void*)0); sgp = ngp) {
   ngp = sgp->sg_next;
   fmd_serd_eng_free(sgp);
  }
 }

 free(shp->sh_hash);
 bzero(shp, sizeof (fmd_serd_hash_t));
}
