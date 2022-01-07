
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sh_count; int sh_hashlen; int sh_hash; } ;
typedef TYPE_1__ fmd_serd_hash_t ;


 int FMD_STR_BUCKETS ;
 int calloc (int ,int) ;

void
fmd_serd_hash_create(fmd_serd_hash_t *shp)
{
 shp->sh_hashlen = FMD_STR_BUCKETS;
 shp->sh_hash = calloc(shp->sh_hashlen, sizeof (void *));
 shp->sh_count = 0;
}
