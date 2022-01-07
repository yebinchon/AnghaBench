
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* tsl_license_on_assign ) (char const*,void*) ;int (* module_shutdown_hook ) () ;} ;


 int Assert (int ) ;
 int CharGetDatum (int ) ;
 int DirectFunctionCall1 (int *,int ) ;
 scalar_t__ TS_LICENSE_IS_APACHE_ONLY (char const*) ;
 int TS_LICENSE_TYPE_IS_VALID (char const*) ;
 int can_load ;
 int current_license_can_downgrade_to_apache () ;
 void* revalidate_license (char const*) ;
 int stub1 () ;
 int stub2 (char const*,void*) ;
 TYPE_1__* ts_cm_functions ;
 int * tsl_handle ;
 int * tsl_startup_fn ;

void
ts_license_on_assign(const char *newval, void *extra)
{
 if (!can_load)
  return;

 Assert(newval != ((void*)0));
 Assert(TS_LICENSE_TYPE_IS_VALID(newval));
 if (TS_LICENSE_IS_APACHE_ONLY(newval))
 {
  Assert(current_license_can_downgrade_to_apache());
  Assert(extra == ((void*)0));
  if (ts_cm_functions->module_shutdown_hook != ((void*)0))
   ts_cm_functions->module_shutdown_hook();
  return;
 }

 Assert(tsl_handle != ((void*)0));
 Assert(tsl_startup_fn != ((void*)0));
 DirectFunctionCall1(tsl_startup_fn, CharGetDatum(0));




 Assert(extra != ((void*)0));
 ts_cm_functions->tsl_license_on_assign(newval, extra);
}
