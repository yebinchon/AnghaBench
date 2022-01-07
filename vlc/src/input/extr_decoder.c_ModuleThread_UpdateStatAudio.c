
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decoder_owner {int * p_aout; } ;


 int aout_DecGetResetStats (int *,unsigned int*,unsigned int*) ;
 int decoder_Notify (struct decoder_owner*,int ,int,unsigned int,unsigned int) ;
 int on_new_audio_stats ;

__attribute__((used)) static void ModuleThread_UpdateStatAudio( struct decoder_owner *p_owner,
                                          bool lost )
{
    unsigned played = 0;
    unsigned aout_lost = 0;
    if( p_owner->p_aout != ((void*)0) )
    {
        aout_DecGetResetStats( p_owner->p_aout, &aout_lost, &played );
    }
    if (lost) aout_lost++;

    decoder_Notify(p_owner, on_new_audio_stats, 1, aout_lost, played);
}
