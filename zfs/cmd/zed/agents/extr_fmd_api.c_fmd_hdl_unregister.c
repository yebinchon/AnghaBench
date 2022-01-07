
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_27__ {int ui64; } ;
struct TYPE_28__ {TYPE_8__ fmds_value; int fmds_name; } ;
struct TYPE_25__ {int ui64; } ;
struct TYPE_26__ {TYPE_6__ fmds_value; int fmds_name; } ;
struct TYPE_23__ {int ui64; } ;
struct TYPE_24__ {TYPE_4__ fmds_value; int fmds_name; } ;
struct TYPE_21__ {int ui64; } ;
struct TYPE_22__ {TYPE_2__ fmds_value; int fmds_name; } ;
struct TYPE_18__ {TYPE_9__ ms_caseclosed; TYPE_7__ ms_casesolved; TYPE_5__ ms_caseopen; TYPE_3__ ms_accepted; } ;
struct TYPE_17__ {int mod_ustat_cnt; int mod_serds; TYPE_11__* mod_ustat; TYPE_1__* mod_info; TYPE_13__ mod_stats; } ;
typedef TYPE_12__ fmd_module_t ;
typedef TYPE_13__ fmd_modstat_t ;
typedef int fmd_hdl_t ;
struct TYPE_19__ {int * fmdo_close; } ;
typedef TYPE_14__ fmd_hdl_ops_t ;
struct TYPE_20__ {TYPE_14__* fmdi_ops; } ;
struct TYPE_15__ {int ui64; } ;
struct TYPE_16__ {TYPE_10__ fmds_value; int fmds_name; } ;


 int fmd_hdl_debug (int *,char*,...) ;
 int fmd_serd_hash_destroy (int *) ;

void
fmd_hdl_unregister(fmd_hdl_t *hdl)
{
 fmd_module_t *mp = (fmd_module_t *)hdl;
 fmd_modstat_t *msp = &mp->mod_stats;
 const fmd_hdl_ops_t *ops = mp->mod_info->fmdi_ops;


 fmd_hdl_debug(hdl, "%s: %llu", msp->ms_accepted.fmds_name,
     msp->ms_accepted.fmds_value.ui64);
 if (ops->fmdo_close != ((void*)0)) {
  fmd_hdl_debug(hdl, "%s: %llu", msp->ms_caseopen.fmds_name,
      msp->ms_caseopen.fmds_value.ui64);
  fmd_hdl_debug(hdl, "%s: %llu", msp->ms_casesolved.fmds_name,
      msp->ms_casesolved.fmds_value.ui64);
  fmd_hdl_debug(hdl, "%s: %llu", msp->ms_caseclosed.fmds_name,
      msp->ms_caseclosed.fmds_value.ui64);
 }


 if (mp->mod_ustat != ((void*)0)) {
  int i;

  for (i = 0; i < mp->mod_ustat_cnt; i++) {
   fmd_hdl_debug(hdl, "%s: %llu",
       mp->mod_ustat[i].fmds_name,
       mp->mod_ustat[i].fmds_value.ui64);
  }
 }

 fmd_serd_hash_destroy(&mp->mod_serds);

 fmd_hdl_debug(hdl, "unregister module");
}
