
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const vlc_object_t ;
typedef int const visual_effect_t ;
typedef int const picture_t ;
typedef int block_t ;


 int VLC_UNUSED (int const*) ;

__attribute__((used)) static int dummy_Run( visual_effect_t * p_effect, vlc_object_t *p_aout,
                      const block_t * p_buffer , picture_t * p_picture)
{
    VLC_UNUSED(p_effect); VLC_UNUSED(p_aout); VLC_UNUSED(p_buffer);
    VLC_UNUSED(p_picture);
    return 0;
}
