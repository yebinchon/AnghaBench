
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logger {scalar_t__ fd; } ;


 struct logger logger ;
 int nc_stacktrace_fd (scalar_t__) ;

void
log_stacktrace(void)
{
    struct logger *l = &logger;

    if (l->fd < 0) {
        return;
    }
    nc_stacktrace_fd(l->fd);
}
