
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static int parse_char( char **psz_command, char **psz_end,
                       int count, char *psz_value )
{
    if( *psz_end - *psz_command < count )
    {
        return VLC_EGENERIC;
    }
    memcpy( psz_value, *psz_command, count );
    *psz_command += count;
    return VLC_SUCCESS;
}
