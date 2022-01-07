
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fmd_serd_eng_t ;
struct TYPE_2__ {int mod_serds; } ;
typedef TYPE_1__ fmd_module_t ;
typedef int fmd_hdl_t ;


 int LOG_ERR ;
 int fmd_hdl_debug (int *,char*,char const*) ;
 int * fmd_serd_eng_lookup (int *,char const*) ;
 int fmd_serd_eng_reset (int *) ;
 int zed_log_msg (int ,char*,char const*) ;

void
fmd_serd_reset(fmd_hdl_t *hdl, const char *name)
{
 fmd_module_t *mp = (fmd_module_t *)hdl;
 fmd_serd_eng_t *sgp;

 if ((sgp = fmd_serd_eng_lookup(&mp->mod_serds, name)) == ((void*)0)) {
  zed_log_msg(LOG_ERR, "serd engine '%s' does not exist", name);
  return;
 }

 fmd_serd_eng_reset(sgp);

 fmd_hdl_debug(hdl, "serd_reset %s", name);
}
