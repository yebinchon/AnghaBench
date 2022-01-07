
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log {int fd; struct log* path; struct log* end; struct log* id; } ;
typedef struct log gzlog ;


 char* LOGID ;
 int free (struct log*) ;
 scalar_t__ log_open (struct log*) ;
 void* malloc (size_t) ;
 int strcpy (struct log*,char*) ;
 size_t strlen (char*) ;

gzlog *gzlog_open(char *path)
{
    size_t n;
    struct log *log;


    if (path == ((void*)0) || *path == 0)
        return ((void*)0);


    log = malloc(sizeof(struct log));
    if (log == ((void*)0))
        return ((void*)0);
    strcpy(log->id, LOGID);
    log->fd = -1;


    n = strlen(path);
    log->path = malloc(n + 9);
    if (log->path == ((void*)0)) {
        free(log);
        return ((void*)0);
    }
    strcpy(log->path, path);
    log->end = log->path + n;



    if (log_open(log)) {
        free(log->path);
        free(log);
        return ((void*)0);
    }


    return log;
}
