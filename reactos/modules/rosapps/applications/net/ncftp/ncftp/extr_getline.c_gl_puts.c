
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (char const* const) ;
 int write (int,char const* const,int) ;

__attribute__((used)) static void
gl_puts(const char *const buf)
{
    int len;

    if (buf) {
        len = (int) strlen(buf);
        write(1, buf, len);
    }
}
