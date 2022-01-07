
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ddl_commands_fmgrinfo ;
 int dropped_objects_fmgrinfo ;
 int fmgr_info (int ,int *) ;
 int fmgr_internal_function (char*) ;

void
_event_trigger_init(void)
{
 fmgr_info(fmgr_internal_function("pg_event_trigger_ddl_commands"), &ddl_commands_fmgrinfo);
 fmgr_info(fmgr_internal_function("pg_event_trigger_dropped_objects"),
     &dropped_objects_fmgrinfo);
}
