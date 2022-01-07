
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int DISABLE_WARNING_FORMAT_NONLITERAL ;
 int REENABLE_WARNING ;
 int log_internalv (int,int ,char const*,int,char const*,char const*,int ) ;

__attribute__((used)) static void systemd_kmod_log(void *data, int priority, const char *file, int line,
                             const char *fn, const char *format, va_list args) {

        DISABLE_WARNING_FORMAT_NONLITERAL;
        log_internalv(priority, 0, file, line, fn, format, args);
        REENABLE_WARNING;
}
