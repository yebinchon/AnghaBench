
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stack ;


 int backtrace (void**,int) ;
 int backtrace_symbols_fd (void**,int,int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char const*,unsigned int,char const*) ;
 int fsync (int) ;
 int stderr ;

void vlc_trace (const char *fn, const char *file, unsigned line)
{
     fprintf (stderr, "at %s:%u in %s\n", file, line, fn);
     fflush (stderr);
     void *stack[20];
     int len = backtrace (stack, sizeof (stack) / sizeof (stack[0]));
     backtrace_symbols_fd (stack, len, 2);
     fsync (2);
}
