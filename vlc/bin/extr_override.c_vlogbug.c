
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 unsigned int MAX_ERRORS ;
 int STDERR_FILENO ;
 int backtrace (void**,size_t const) ;
 int backtrace_symbols_fd (void**,size_t const,int ) ;
 int fflush (int ) ;
 int flockfile (int ) ;
 int fprintf (int ,char*,char const*,char const*) ;
 int fputs (char*,int ) ;
 int funlockfile (int ) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void vlogbug (unsigned *pc, const char *level, const char *func,
                     const char *fmt, va_list ap)
{






    flockfile (stderr);
    if (*pc < MAX_ERRORS)
    {
        (*pc)++;
        fprintf (stderr, "%s: call to %s(", level, func);
        vfprintf (stderr, fmt, ap);
        fputs (")\n", stderr);
        fflush (stderr);



    }
    funlockfile (stderr);
}
