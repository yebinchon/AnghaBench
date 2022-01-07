
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ui64; } ;
struct TYPE_8__ {TYPE_1__ fmds_value; } ;
struct TYPE_9__ {TYPE_2__ ms_casesolved; } ;
struct TYPE_10__ {TYPE_3__ mod_stats; } ;
typedef TYPE_4__ fmd_module_t ;
typedef int fmd_hdl_t ;
struct TYPE_11__ {scalar_t__ ci_state; int ci_uuid; } ;
typedef TYPE_5__ fmd_case_t ;


 scalar_t__ FMD_CASE_SOLVED ;
 int fmd_hdl_debug (int *,char*,...) ;

void
fmd_case_solve(fmd_hdl_t *hdl, fmd_case_t *cp)
{
 fmd_module_t *mp = (fmd_module_t *)hdl;





 if (cp->ci_state >= FMD_CASE_SOLVED)
  fmd_hdl_debug(hdl, "case is already solved or closed");

 cp->ci_state = FMD_CASE_SOLVED;

 fmd_hdl_debug(hdl, "case solved (%s)", cp->ci_uuid);
 mp->mod_stats.ms_casesolved.fmds_value.ui64++;
}
