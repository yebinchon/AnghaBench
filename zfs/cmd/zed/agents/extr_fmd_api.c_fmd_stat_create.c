
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
typedef int fmd_stat_t ;
struct TYPE_2__ {scalar_t__ mod_ustat_cnt; int * mod_ustat; } ;
typedef TYPE_1__ fmd_module_t ;
typedef int fmd_hdl_t ;


 scalar_t__ FMD_STAT_NOALLOC ;

fmd_stat_t *
fmd_stat_create(fmd_hdl_t *hdl, uint_t flags, uint_t nstats, fmd_stat_t *statv)
{
 fmd_module_t *mp = (fmd_module_t *)hdl;

 if (flags == FMD_STAT_NOALLOC) {
  mp->mod_ustat = statv;
  mp->mod_ustat_cnt = nstats;
 }

 return (statv);
}
