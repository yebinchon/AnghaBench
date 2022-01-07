
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_log_hook ;
 int emit_log_hook_callback ;
 int prev_emit_log_hook ;

void
ts_register_emit_log_hook()
{
 prev_emit_log_hook = emit_log_hook;
 emit_log_hook = emit_log_hook_callback;
}
