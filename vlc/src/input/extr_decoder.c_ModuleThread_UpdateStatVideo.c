
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decoder_owner {int * p_vout; } ;


 int decoder_Notify (struct decoder_owner*,int ,int,unsigned int,unsigned int) ;
 int on_new_video_stats ;
 int vout_GetResetStatistic (int *,unsigned int*,unsigned int*) ;

__attribute__((used)) static void ModuleThread_UpdateStatVideo( struct decoder_owner *p_owner,
                                          bool lost )
{
    unsigned displayed = 0;
    unsigned vout_lost = 0;
    if( p_owner->p_vout != ((void*)0) )
    {
        vout_GetResetStatistic( p_owner->p_vout, &displayed, &vout_lost );
    }
    if (lost) vout_lost++;

    decoder_Notify(p_owner, on_new_video_stats, 1, vout_lost, displayed);
}
