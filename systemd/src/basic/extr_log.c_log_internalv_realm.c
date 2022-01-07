
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef size_t LogRealm ;


 int ERRNO_VALUE (int) ;
 int LINE_MAX ;
 scalar_t__ LOG_PRI (int) ;
 size_t LOG_REALM_REMOVE_LEVEL (int) ;
 int PROTECT_ERRNO ;
 scalar_t__ _likely_ (int) ;
 int errno ;
 int log_dispatch_internal (int,int,char const*,int,char const*,int *,int *,int *,int *,char*) ;
 scalar_t__* log_max_level ;
 int vsnprintf (char*,int,char const*,int ) ;

int log_internalv_realm(
                int level,
                int error,
                const char *file,
                int line,
                const char *func,
                const char *format,
                va_list ap) {

        LogRealm realm = LOG_REALM_REMOVE_LEVEL(level);
        char buffer[LINE_MAX];
        PROTECT_ERRNO;

        if (_likely_(LOG_PRI(level) > log_max_level[realm]))
                return -ERRNO_VALUE(error);


        errno = ERRNO_VALUE(error);

        (void) vsnprintf(buffer, sizeof buffer, format, ap);

        return log_dispatch_internal(level, error, file, line, func, ((void*)0), ((void*)0), ((void*)0), ((void*)0), buffer);
}
