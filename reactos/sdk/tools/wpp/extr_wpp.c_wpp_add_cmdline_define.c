
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* pp_xstrdup (char const*) ;
 char* strchr (char*,char) ;
 int wpp_add_define (char*,char*) ;

int wpp_add_cmdline_define( const char *value )
{
    char *p;
    char *str = pp_xstrdup(value);
    if(!str)
        return 1;
    p = strchr( str, '=' );
    if (p) *p++ = 0;
    wpp_add_define( str, p );
    free( str );
    return 0;
}
