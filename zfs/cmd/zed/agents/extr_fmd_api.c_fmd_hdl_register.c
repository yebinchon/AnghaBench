
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int fmds_name; } ;
struct TYPE_11__ {int fmds_name; } ;
struct TYPE_10__ {int fmds_name; } ;
struct TYPE_9__ {int fmds_name; } ;
struct TYPE_13__ {TYPE_4__ ms_caseclosed; TYPE_3__ ms_casesolved; TYPE_2__ ms_caseopen; TYPE_1__ ms_accepted; } ;
struct TYPE_14__ {int mod_serds; TYPE_5__ mod_stats; int * mod_spec; scalar_t__ mod_name; TYPE_7__ const* mod_info; } ;
typedef TYPE_6__ fmd_module_t ;
typedef int fmd_hdl_t ;
struct TYPE_15__ {scalar_t__ fmdi_desc; } ;
typedef TYPE_7__ fmd_hdl_info_t ;


 int fmd_hdl_debug (int *,char*) ;
 int fmd_serd_hash_create (int *) ;
 int strcpy (int ,char*) ;

int
fmd_hdl_register(fmd_hdl_t *hdl, int version, const fmd_hdl_info_t *mip)
{
 fmd_module_t *mp = (fmd_module_t *)hdl;

 mp->mod_info = mip;
 mp->mod_name = mip->fmdi_desc + 4;
 mp->mod_spec = ((void*)0);


 (void) strcpy(mp->mod_stats.ms_accepted.fmds_name, "fmd.accepted");
 (void) strcpy(mp->mod_stats.ms_caseopen.fmds_name, "fmd.caseopen");
 (void) strcpy(mp->mod_stats.ms_casesolved.fmds_name, "fmd.casesolved");
 (void) strcpy(mp->mod_stats.ms_caseclosed.fmds_name, "fmd.caseclosed");

 fmd_serd_hash_create(&mp->mod_serds);

 fmd_hdl_debug(hdl, "register module");

 return (0);
}
