
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char commandparams_t ;


 int VLC_SUCCESS ;
 int VLC_UNUSED (char*) ;

__attribute__((used)) static int parser_None( char *psz_command, char *psz_end,
                        commandparams_t *p_params )
{
    VLC_UNUSED(psz_command);
    VLC_UNUSED(psz_end);
    VLC_UNUSED(p_params);
    return VLC_SUCCESS;
}
