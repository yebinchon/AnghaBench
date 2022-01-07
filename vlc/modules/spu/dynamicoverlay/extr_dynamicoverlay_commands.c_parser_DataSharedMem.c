
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_shmid; int fourcc; int i_height; int i_width; int i_id; } ;
typedef TYPE_1__ commandparams_t ;


 scalar_t__ VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ isascii (unsigned char) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ parse_char (char**,char**,int,char*) ;
 scalar_t__ parse_digit (char**,int *) ;
 int skip_space (char**) ;

__attribute__((used)) static int parser_DataSharedMem( char *psz_command,
                                 char *psz_end,
                                 commandparams_t *p_params )
{

    skip_space( &psz_command );
    if( isdigit( (unsigned char)*psz_command ) )
    {
        if( parse_digit( &psz_command, &p_params->i_id ) == VLC_EGENERIC )
            return VLC_EGENERIC;
    }
    skip_space( &psz_command );
    if( isdigit( (unsigned char)*psz_command ) )
    {
        if( parse_digit( &psz_command, &p_params->i_width ) == VLC_EGENERIC )
            return VLC_EGENERIC;
    }
    skip_space( &psz_command );
    if( isdigit( (unsigned char)*psz_command ) )
    {
        if( parse_digit( &psz_command, &p_params->i_height ) == VLC_EGENERIC )
            return VLC_EGENERIC;
    }
    skip_space( &psz_command );
    if( isascii( (unsigned char)*psz_command ) )
    {
        if( parse_char( &psz_command, &psz_end, 4, (char*)&p_params->fourcc )
            == VLC_EGENERIC )
            return VLC_EGENERIC;
    }
    skip_space( &psz_command );
    if( isdigit( (unsigned char)*psz_command ) )
    {
        if( parse_digit( &psz_command, &p_params->i_shmid ) == VLC_EGENERIC )
            return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}
