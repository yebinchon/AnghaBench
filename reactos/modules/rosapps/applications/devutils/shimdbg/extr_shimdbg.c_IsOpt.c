
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _strnicmp (char*,char const*,int ) ;
 int strlen (char const*) ;

int IsOpt(char* argv, const char* check)
{
    if( argv && (argv[0] == '-' || argv[0] == '/') ) {
        return !_strnicmp(argv + 1, check, strlen(check));
    }
    return 0;
}
