
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR ;




 int elog (int ,char*,int) ;
 int extension_update_state () ;
 int extstate ;
 scalar_t__ ts_guc_restoring ;

bool
ts_extension_is_loaded(void)
{

 if (ts_guc_restoring)
  return 0;

 if (128 == extstate || 129 == extstate)
 {

  extension_update_state();
 }

 switch (extstate)
 {
  case 131:
   return 1;
  case 130:
  case 128:
  case 129:






   return 0;
  default:
   elog(ERROR, "unknown state: %d", extstate);
   return 0;
 }
}
