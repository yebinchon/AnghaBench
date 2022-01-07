
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int gl_cleanup () ;
 scalar_t__ strlen (char const* const) ;
 int write (int,char const* const,int) ;

__attribute__((used)) static void
gl_error(const char *const buf)
{
    int len = (int) strlen(buf);

    gl_cleanup();
    write(2, buf, len);
    exit(1);
}
