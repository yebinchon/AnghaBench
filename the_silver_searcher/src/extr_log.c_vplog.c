
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int FILE ;






 int fprintf (int *,char*) ;
 unsigned int const log_threshold ;
 int * out_fd ;
 int print_mtx ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int * stderr ;
 int vfprintf (int *,char const*,int ) ;

void vplog(const unsigned int level, const char *fmt, va_list args) {
    if (level < log_threshold) {
        return;
    }

    pthread_mutex_lock(&print_mtx);
    FILE *stream = out_fd;

    switch (level) {
        case 131:
            fprintf(stream, "DEBUG: ");
            break;
        case 129:
            fprintf(stream, "MSG: ");
            break;
        case 128:
            fprintf(stream, "WARN: ");
            break;
        case 130:
            stream = stderr;
            fprintf(stream, "ERR: ");
            break;
    }

    vfprintf(stream, fmt, args);
    fprintf(stream, "\n");
    pthread_mutex_unlock(&print_mtx);
}
