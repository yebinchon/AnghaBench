
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int commandparams_t ;
typedef int const buffer_t ;


 int VLC_SUCCESS ;
 int VLC_UNUSED (int const*) ;

__attribute__((used)) static int unparse_default( const commandparams_t *p_results,
                            buffer_t *p_output )
{
    VLC_UNUSED(p_results);
    VLC_UNUSED(p_output);
    return VLC_SUCCESS;
}
