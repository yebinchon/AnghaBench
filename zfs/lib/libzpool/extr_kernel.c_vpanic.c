
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int abort () ;
 int fprintf (int ,char*) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

void
vpanic(const char *fmt, va_list adx)
{
 (void) fprintf(stderr, "error: ");
 (void) vfprintf(stderr, fmt, adx);
 (void) fprintf(stderr, "\n");

 abort();
}
