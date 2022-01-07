
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TS_CURRENT_LICENSE_IS_APACHE_ONLY () ;
 scalar_t__ downgrade_to_apache_enabled ;
 int * ts_guc_license_key ;
 int * tsl_handle ;

__attribute__((used)) static bool
current_license_can_downgrade_to_apache(void)
{
 if (downgrade_to_apache_enabled)
  return 1;

 return (ts_guc_license_key == ((void*)0) || TS_CURRENT_LICENSE_IS_APACHE_ONLY()) &&
     tsl_handle == ((void*)0);
}
