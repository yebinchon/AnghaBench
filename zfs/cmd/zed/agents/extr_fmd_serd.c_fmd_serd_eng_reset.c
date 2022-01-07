
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sg_count; int sg_flags; int sg_list; int sg_name; } ;
typedef TYPE_1__ fmd_serd_eng_t ;


 int FMD_SERD_DIRTY ;
 int FMD_SERD_FIRED ;
 int fmd_serd_eng_discard (TYPE_1__*,int ) ;
 int list_head (int *) ;
 int serd_log_msg (char*,int ) ;

void
fmd_serd_eng_reset(fmd_serd_eng_t *sgp)
{
 serd_log_msg("  SERD Engine: resetting %s", sgp->sg_name);

 while (sgp->sg_count != 0)
  fmd_serd_eng_discard(sgp, list_head(&sgp->sg_list));

 sgp->sg_flags &= ~FMD_SERD_FIRED;
 sgp->sg_flags |= FMD_SERD_DIRTY;
}
