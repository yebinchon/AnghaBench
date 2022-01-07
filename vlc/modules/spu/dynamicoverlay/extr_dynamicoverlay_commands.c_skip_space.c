
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static int skip_space( char **psz_command )
{
    char *psz_temp = *psz_command;

    while( isspace( (unsigned char)*psz_temp ) )
    {
        ++psz_temp;
    }
    if( psz_temp == *psz_command )
    {
        return VLC_EGENERIC;
    }
    *psz_command = psz_temp;
    return VLC_SUCCESS;
}
