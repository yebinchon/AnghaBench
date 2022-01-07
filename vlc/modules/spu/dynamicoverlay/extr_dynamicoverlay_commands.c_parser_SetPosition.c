
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_y; int i_x; int i_id; } ;
typedef TYPE_1__ commandparams_t ;


 scalar_t__ VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (char*) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ parse_digit (char**,int *) ;
 int skip_space (char**) ;

__attribute__((used)) static int parser_SetPosition( char *psz_command, char *psz_end,
                               commandparams_t *p_params )
{
    VLC_UNUSED(psz_end);
    skip_space( &psz_command );
    if( isdigit( (unsigned char)*psz_command ) )
    {
        if( parse_digit( &psz_command, &p_params->i_id ) == VLC_EGENERIC )
            return VLC_EGENERIC;
    }
    skip_space( &psz_command );
    if( isdigit( (unsigned char)*psz_command ) )
    {
        if( parse_digit( &psz_command, &p_params->i_x ) == VLC_EGENERIC )
            return VLC_EGENERIC;
    }
    skip_space( &psz_command );
    if( isdigit( (unsigned char)*psz_command ) )
    {
        if( parse_digit( &psz_command, &p_params->i_y ) == VLC_EGENERIC )
            return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}
