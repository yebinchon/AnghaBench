
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 int VIS_CSTYLE ;
 int VIS_NL ;
 int VIS_OCTAL ;
 int VIS_TAB ;
 int exit (int) ;
 int fflush (int *) ;
 int fprintf (int *,char*,long long,int,char*) ;
 int free (char*) ;
 int gettimeofday (struct timeval*,int *) ;
 int * log_file ;
 int stravis (char**,char*,int) ;
 int vasprintf (char**,char const*,int ) ;

__attribute__((used)) static void
log_vwrite(const char *msg, va_list ap)
{
 char *fmt, *out;
 struct timeval tv;

 if (log_file == ((void*)0))
  return;

 if (vasprintf(&fmt, msg, ap) == -1)
  exit(1);
 if (stravis(&out, fmt, VIS_OCTAL|VIS_CSTYLE|VIS_TAB|VIS_NL) == -1)
  exit(1);

 gettimeofday(&tv, ((void*)0));
 if (fprintf(log_file, "%lld.%06d %s\n", (long long)tv.tv_sec,
     (int)tv.tv_usec, out) == -1)
  exit(1);
 fflush(log_file);

 free(out);
 free(fmt);
}
