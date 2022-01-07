
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint_t ;
struct TYPE_5__ {size_t sh_hashlen; TYPE_2__** sh_hash; } ;
typedef TYPE_1__ fmd_serd_hash_t ;
struct TYPE_6__ {int sg_name; struct TYPE_6__* sg_next; } ;
typedef TYPE_2__ fmd_serd_eng_t ;


 size_t fmd_strhash (char const*) ;
 scalar_t__ strcmp (char const*,int ) ;

fmd_serd_eng_t *
fmd_serd_eng_lookup(fmd_serd_hash_t *shp, const char *name)
{
 uint_t h = fmd_strhash(name) % shp->sh_hashlen;
 fmd_serd_eng_t *sgp;

 for (sgp = shp->sh_hash[h]; sgp != ((void*)0); sgp = sgp->sg_next) {
  if (strcmp(name, sgp->sg_name) == 0)
   return (sgp);
 }

 return (((void*)0));
}
