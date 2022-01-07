
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int ui64; } ;
struct TYPE_17__ {TYPE_4__ fmds_value; } ;
struct TYPE_14__ {int ui64; } ;
struct TYPE_15__ {TYPE_2__ fmds_value; } ;
struct TYPE_18__ {TYPE_5__ ms_caseclosed; TYPE_3__ ms_caseopen; } ;
struct TYPE_19__ {TYPE_6__ mod_stats; TYPE_1__* mod_info; } ;
typedef TYPE_7__ fmd_module_t ;
typedef int fmd_hdl_t ;
struct TYPE_20__ {int (* fmdo_close ) (int *,TYPE_9__*) ;} ;
typedef TYPE_8__ fmd_hdl_ops_t ;
struct TYPE_21__ {scalar_t__ ci_bufsiz; struct TYPE_21__* ci_bufptr; int ci_uuid; } ;
typedef TYPE_9__ fmd_case_t ;
struct TYPE_13__ {TYPE_8__* fmdi_ops; } ;


 int fmd_hdl_debug (int *,char*,int ) ;
 int fmd_hdl_free (int *,TYPE_9__*,int) ;
 int stub1 (int *,TYPE_9__*) ;

void
fmd_case_close(fmd_hdl_t *hdl, fmd_case_t *cp)
{
 fmd_module_t *mp = (fmd_module_t *)hdl;
 const fmd_hdl_ops_t *ops = mp->mod_info->fmdi_ops;

 fmd_hdl_debug(hdl, "case closed (%s)", cp->ci_uuid);

 if (ops->fmdo_close != ((void*)0))
  ops->fmdo_close(hdl, cp);

 mp->mod_stats.ms_caseopen.fmds_value.ui64--;
 mp->mod_stats.ms_caseclosed.fmds_value.ui64++;

 if (cp->ci_bufptr != ((void*)0) && cp->ci_bufsiz > 0)
  fmd_hdl_free(hdl, cp->ci_bufptr, cp->ci_bufsiz);

 fmd_hdl_free(hdl, cp, sizeof (fmd_case_t));
}
