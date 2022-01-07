
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logger {char* name; scalar_t__ fd; int level; } ;


 int LOG_EMERG ;
 int LOG_PVERB ;
 int MAX (int ,int ) ;
 int MIN (int,int ) ;
 int O_APPEND ;
 int O_CREAT ;
 int O_WRONLY ;
 scalar_t__ STDERR_FILENO ;
 int errno ;
 int log_stderr (char*,char*,int ) ;
 struct logger logger ;
 scalar_t__ open (char*,int,int) ;
 int strerror (int ) ;
 int strlen (char*) ;

int
log_init(int level, char *name)
{
    struct logger *l = &logger;

    l->level = MAX(LOG_EMERG, MIN(level, LOG_PVERB));
    l->name = name;
    if (name == ((void*)0) || !strlen(name)) {
        l->fd = STDERR_FILENO;
    } else {
        l->fd = open(name, O_WRONLY | O_APPEND | O_CREAT, 0644);
        if (l->fd < 0) {
            log_stderr("opening log file '%s' failed: %s", name,
                       strerror(errno));
            return -1;
        }
    }

    return 0;
}
