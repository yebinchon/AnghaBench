
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


typedef int uint_t ;
typedef int nvlist_t ;
typedef int int64_t ;
struct TYPE_9__ {int ui64; } ;
struct TYPE_10__ {TYPE_1__ fmds_value; } ;
struct TYPE_11__ {TYPE_2__ ms_accepted; } ;
struct TYPE_13__ {TYPE_3__ mod_stats; TYPE_4__* mod_info; } ;
typedef TYPE_5__ fmd_module_t ;
typedef int fmd_hdl_t ;
struct TYPE_14__ {int (* fmdo_recv ) (int *,TYPE_7__*,int *,char const*) ;} ;
typedef TYPE_6__ fmd_hdl_ops_t ;
struct TYPE_15__ {int ev_hrt; int member_0; } ;
typedef TYPE_7__ fmd_event_t ;
struct TYPE_12__ {TYPE_6__* fmdi_ops; } ;


 int FM_EREPORT_TIME ;
 int NANOSEC ;
 scalar_t__ nvlist_lookup_int64_array (int *,int ,int**,int *) ;
 int stub1 (int *,TYPE_7__*,int *,char const*) ;

void
fmd_module_recv(fmd_hdl_t *hdl, nvlist_t *nvl, const char *class)
{
 fmd_module_t *mp = (fmd_module_t *)hdl;
 const fmd_hdl_ops_t *ops = mp->mod_info->fmdi_ops;
 fmd_event_t faux_event = {0};
 int64_t *tv;
 uint_t n;




 if (nvlist_lookup_int64_array(nvl, FM_EREPORT_TIME, &tv, &n) == 0)
  faux_event.ev_hrt = tv[0] * NANOSEC + tv[1];
 else
  faux_event.ev_hrt = 0;

 ops->fmdo_recv(hdl, &faux_event, nvl, class);

 mp->mod_stats.ms_accepted.fmds_value.ui64++;


}
