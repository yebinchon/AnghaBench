
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t LogRealm ;


 int ERRNO_VALUE (int) ;
 scalar_t__ LOG_PRI (int) ;
 size_t LOG_REALM_REMOVE_LEVEL (int) ;
 int PROTECT_ERRNO ;
 scalar_t__ _likely_ (int) ;
 int log_dispatch_internal (int,int,char const*,int,char const*,int *,int *,int *,int *,char*) ;
 scalar_t__* log_max_level ;

int log_dump_internal(
                int level,
                int error,
                const char *file,
                int line,
                const char *func,
                char *buffer) {

        LogRealm realm = LOG_REALM_REMOVE_LEVEL(level);
        PROTECT_ERRNO;



        if (_likely_(LOG_PRI(level) > log_max_level[realm]))
                return -ERRNO_VALUE(error);

        return log_dispatch_internal(level, error, file, line, func, ((void*)0), ((void*)0), ((void*)0), ((void*)0), buffer);
}
