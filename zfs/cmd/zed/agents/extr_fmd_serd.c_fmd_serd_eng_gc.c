
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ hrtime_t ;
struct TYPE_9__ {scalar_t__ sg_count; int sg_flags; scalar_t__ sg_t; int sg_list; } ;
typedef TYPE_1__ fmd_serd_eng_t ;
struct TYPE_10__ {scalar_t__ se_hrt; } ;
typedef TYPE_2__ fmd_serd_elem_t ;


 int FMD_SERD_DIRTY ;
 int FMD_SERD_FIRED ;
 int fmd_serd_eng_discard (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* list_head (int *) ;
 TYPE_2__* list_next (int *,TYPE_2__*) ;

void
fmd_serd_eng_gc(fmd_serd_eng_t *sgp)
{
 fmd_serd_elem_t *sep, *nep;
 hrtime_t hrt;

 if (sgp->sg_count == 0 || (sgp->sg_flags & FMD_SERD_FIRED))
  return;

 sep = list_head(&sgp->sg_list);
 if (sep == ((void*)0))
  return;

 hrt = sep->se_hrt - sgp->sg_t;

 for (sep = list_head(&sgp->sg_list); sep != ((void*)0); sep = nep) {
  if (sep->se_hrt >= hrt)
   break;

  nep = list_next(&sgp->sg_list, sep);
  fmd_serd_eng_discard(sgp, sep);
  sgp->sg_flags |= FMD_SERD_DIRTY;
 }
}
