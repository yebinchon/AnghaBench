
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logger {scalar_t__ fd; int name; } ;


 int O_APPEND ;
 int O_CREAT ;
 int O_WRONLY ;
 scalar_t__ STDERR_FILENO ;
 int close (scalar_t__) ;
 int errno ;
 int log_stderr_safe (char*,int ,int ) ;
 struct logger logger ;
 scalar_t__ open (int ,int,int) ;
 int strerror (int ) ;

void
log_reopen(void)
{
    struct logger *l = &logger;

    if (l->fd != STDERR_FILENO) {
        close(l->fd);
        l->fd = open(l->name, O_WRONLY | O_APPEND | O_CREAT, 0644);
        if (l->fd < 0) {
            log_stderr_safe("reopening log file '%s' failed, ignored: %s", l->name,
                       strerror(errno));
        }
    }
}
