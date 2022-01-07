
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int libvlc_log_t ;
typedef int FILE ;


 int flockfile (int *) ;
 int fputc (char,int *) ;
 int funlockfile (int *) ;
 int vfprintf (int *,char const*,int ) ;

__attribute__((used)) static void libvlc_log_file (void *data, int level, const libvlc_log_t *log,
                             const char *fmt, va_list ap)
{
    FILE *stream = data;

    flockfile (stream);
    vfprintf (stream, fmt, ap);
    fputc ('\n', stream);
    funlockfile (stream);
    (void) level; (void) log;
}
