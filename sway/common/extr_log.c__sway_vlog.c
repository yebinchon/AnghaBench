
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int sway_log_importance_t ;


 int sway_log_stderr (int ,char const*,int ) ;

void _sway_vlog(sway_log_importance_t verbosity, const char *fmt, va_list args) {
 sway_log_stderr(verbosity, fmt, args);
}
