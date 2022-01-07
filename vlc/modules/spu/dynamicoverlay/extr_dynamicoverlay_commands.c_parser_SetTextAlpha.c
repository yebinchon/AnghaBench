
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {int i_font_alpha; } ;
struct TYPE_5__ {TYPE_1__ fontstyle; int i_id; } ;
typedef TYPE_2__ commandparams_t ;


 scalar_t__ VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (char*) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ parse_digit (char**,int *) ;
 int skip_space (char**) ;

__attribute__((used)) static int parser_SetTextAlpha( char *psz_command, char *psz_end,
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
        int32_t value;

        if( parse_digit( &psz_command, &value ) == VLC_EGENERIC )
            return VLC_EGENERIC;

        p_params->fontstyle.i_font_alpha = value;
    }
    return VLC_SUCCESS;
}
