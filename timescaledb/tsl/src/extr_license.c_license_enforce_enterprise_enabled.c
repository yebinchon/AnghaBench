
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR ;
 int elog (int ,char*) ;
 int license_enterprise_enabled () ;

void
license_enforce_enterprise_enabled(void)
{
 if (!license_enterprise_enabled())
  elog(ERROR, "cannot execute an enterprise function with an invalid enterprise license");
}
