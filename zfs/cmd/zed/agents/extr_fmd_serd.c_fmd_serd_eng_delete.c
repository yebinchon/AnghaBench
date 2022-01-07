
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint_t ;
struct TYPE_5__ {size_t sh_hashlen; scalar_t__ sh_count; TYPE_2__** sh_hash; } ;
typedef TYPE_1__ fmd_serd_hash_t ;
struct TYPE_6__ {struct TYPE_6__* sg_next; int sg_name; } ;
typedef TYPE_2__ fmd_serd_eng_t ;


 int assert (int) ;
 int fmd_serd_eng_free (TYPE_2__*) ;
 size_t fmd_strhash (char const*) ;
 int serd_log_msg (char*,char const*) ;
 scalar_t__ strcmp (int ,char const*) ;

void
fmd_serd_eng_delete(fmd_serd_hash_t *shp, const char *name)
{
 uint_t h = fmd_strhash(name) % shp->sh_hashlen;
 fmd_serd_eng_t *sgp, **pp = &shp->sh_hash[h];

 serd_log_msg("  SERD Engine: deleting %s", name);

 for (sgp = *pp; sgp != ((void*)0); sgp = sgp->sg_next) {
  if (strcmp(sgp->sg_name, name) != 0)
   pp = &sgp->sg_next;
  else
   break;
 }

 if (sgp != ((void*)0)) {
  *pp = sgp->sg_next;
  fmd_serd_eng_free(sgp);
  assert(shp->sh_count != 0);
  shp->sh_count--;
 }
}
