
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long int32_t ;


 long INT32_MAX ;
 long INT32_MIN ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static int parse_digit( char **psz_command, int32_t *value )
{
    char *psz_temp;
    long l = strtol( *psz_command, &psz_temp, 10 );

    if( psz_temp == *psz_command )
    {
        return VLC_EGENERIC;
    }




    *value = l;
    *psz_command = psz_temp;
    return VLC_SUCCESS;
}
