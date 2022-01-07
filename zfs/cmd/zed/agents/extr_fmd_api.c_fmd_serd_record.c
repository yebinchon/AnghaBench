
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int fmd_serd_eng_t ;
struct TYPE_4__ {int mod_serds; } ;
typedef TYPE_1__ fmd_module_t ;
typedef int fmd_hdl_t ;
struct TYPE_5__ {int ev_hrt; } ;
typedef TYPE_2__ fmd_event_t ;


 int FMD_B_FALSE ;
 int LOG_ERR ;
 int * fmd_serd_eng_lookup (int *,char const*) ;
 int fmd_serd_eng_record (int *,int ) ;
 int zed_log_msg (int ,char*,char const*) ;

int
fmd_serd_record(fmd_hdl_t *hdl, const char *name, fmd_event_t *ep)
{
 fmd_module_t *mp = (fmd_module_t *)hdl;
 fmd_serd_eng_t *sgp;
 int err;

 if ((sgp = fmd_serd_eng_lookup(&mp->mod_serds, name)) == ((void*)0)) {
  zed_log_msg(LOG_ERR, "failed to add record to SERD engine '%s'",
      name);
  return (FMD_B_FALSE);
 }
 err = fmd_serd_eng_record(sgp, ep->ev_hrt);

 return (err);
}
