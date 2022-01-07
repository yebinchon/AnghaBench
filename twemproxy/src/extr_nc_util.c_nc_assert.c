
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int log_error (char*,char const*,char const*,int) ;
 int nc_stacktrace (int) ;

void
nc_assert(const char *cond, const char *file, int line, int panic)
{
    log_error("assert '%s' failed @ (%s, %d)", cond, file, line);
    if (panic) {
        nc_stacktrace(1);
        abort();
    }
}
