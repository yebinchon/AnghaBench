
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uuid_t ;
struct TYPE_8__ {int ui64; } ;
struct TYPE_9__ {TYPE_1__ fmds_value; } ;
struct TYPE_10__ {TYPE_2__ ms_caseopen; } ;
struct TYPE_11__ {TYPE_3__ mod_stats; } ;
typedef TYPE_4__ fmd_module_t ;
typedef int fmd_hdl_t ;
struct TYPE_12__ {int ci_uuid; scalar_t__ ci_bufsiz; int * ci_bufptr; void* ci_data; int ci_flags; int ci_state; int * ci_mod; } ;
typedef TYPE_5__ fmd_case_t ;


 int FMD_CASE_UNSOLVED ;
 int FMD_CF_DIRTY ;
 int FMD_SLEEP ;
 int fmd_hdl_debug (int *,char*,int ) ;
 TYPE_5__* fmd_hdl_zalloc (int *,int,int ) ;
 int uuid_generate (int ) ;
 int uuid_unparse (int ,int ) ;

fmd_case_t *
fmd_case_open(fmd_hdl_t *hdl, void *data)
{
 fmd_module_t *mp = (fmd_module_t *)hdl;
 uuid_t uuid;

 fmd_case_t *cp;

 cp = fmd_hdl_zalloc(hdl, sizeof (fmd_case_t), FMD_SLEEP);
 cp->ci_mod = hdl;
 cp->ci_state = FMD_CASE_UNSOLVED;
 cp->ci_flags = FMD_CF_DIRTY;
 cp->ci_data = data;
 cp->ci_bufptr = ((void*)0);
 cp->ci_bufsiz = 0;

 uuid_generate(uuid);
 uuid_unparse(uuid, cp->ci_uuid);

 fmd_hdl_debug(hdl, "case opened (%s)", cp->ci_uuid);
 mp->mod_stats.ms_caseopen.fmds_value.ui64++;

 return (cp);
}
