
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decoder_owner {int dummy; } ;
typedef int picture_t ;
typedef int decoder_t ;


 int ModuleThread_PlayVideo (struct decoder_owner*,int *) ;
 int ModuleThread_UpdateStatVideo (struct decoder_owner*,int) ;
 int VLC_SUCCESS ;
 int assert (int *) ;
 struct decoder_owner* dec_get_owner (int *) ;

__attribute__((used)) static void ModuleThread_QueueVideo( decoder_t *p_dec, picture_t *p_pic )
{
    assert( p_pic );
    struct decoder_owner *p_owner = dec_get_owner( p_dec );

    int success = ModuleThread_PlayVideo( p_owner, p_pic );

    ModuleThread_UpdateStatVideo( p_owner, success != VLC_SUCCESS );
}
