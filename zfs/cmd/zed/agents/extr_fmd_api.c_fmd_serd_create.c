
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint_t ;
typedef int hrtime_t ;
struct TYPE_2__ {int mod_serds; } ;
typedef TYPE_1__ fmd_module_t ;
typedef int fmd_hdl_t ;


 int LOG_ERR ;
 int fmd_serd_eng_insert (int *,char const*,int ,int ) ;
 int * fmd_serd_eng_lookup (int *,char const*) ;
 int zed_log_msg (int ,char*,char const*) ;

void
fmd_serd_create(fmd_hdl_t *hdl, const char *name, uint_t n, hrtime_t t)
{
 fmd_module_t *mp = (fmd_module_t *)hdl;

 if (fmd_serd_eng_lookup(&mp->mod_serds, name) != ((void*)0)) {
  zed_log_msg(LOG_ERR, "failed to create SERD engine '%s': "
      " name already exists", name);
  return;
 }

 (void) fmd_serd_eng_insert(&mp->mod_serds, name, n, t);
}
