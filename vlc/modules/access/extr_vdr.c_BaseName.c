
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const DIR_SEP_CHAR ;
 int strlen (char const*) ;

__attribute__((used)) static const char *BaseName( const char *psz_path )
{
    const char *psz_name = psz_path + strlen( psz_path );


    while( psz_name > psz_path && psz_name[-1] == DIR_SEP_CHAR )
        --psz_name;


    while( psz_name > psz_path && psz_name[-1] != DIR_SEP_CHAR )
        --psz_name;

    return psz_name;
}
