
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decoder_owner {int dummy; } ;
typedef int decoder_t ;
typedef int block_t ;


 int ModuleThread_PlayAudio (struct decoder_owner*,int *) ;
 int ModuleThread_UpdateStatAudio (struct decoder_owner*,int) ;
 int VLC_SUCCESS ;
 struct decoder_owner* dec_get_owner (int *) ;

__attribute__((used)) static void ModuleThread_QueueAudio( decoder_t *p_dec, block_t *p_aout_buf )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );

    int success = ModuleThread_PlayAudio( p_owner, p_aout_buf );

    ModuleThread_UpdateStatAudio( p_owner, success != VLC_SUCCESS );
}
