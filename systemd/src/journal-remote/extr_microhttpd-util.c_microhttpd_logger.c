
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int DISABLE_WARNING_FORMAT_NONLITERAL ;
 int LOG_INFO ;
 int REENABLE_WARNING ;
 int log_internalv (int ,int ,int *,int ,int *,char*,int ) ;
 char* strjoina (char*,char const*) ;

void microhttpd_logger(void *arg, const char *fmt, va_list ap) {
        char *f;

        f = strjoina("microhttpd: ", fmt);

        DISABLE_WARNING_FORMAT_NONLITERAL;
        log_internalv(LOG_INFO, 0, ((void*)0), 0, ((void*)0), f, ap);
        REENABLE_WARNING;
}
