
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Datum ;


 int extension_check () ;
 scalar_t__ guc_disable_load ;

__attribute__((used)) static void
inval_cache_callback(Datum arg, Oid relid)
{
 if (guc_disable_load)
  return;
 extension_check();
}
