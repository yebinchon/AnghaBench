
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decoder_owner {float output_rate; int lock; int p_clock; } ;
typedef int decoder_t ;


 struct decoder_owner* dec_get_owner (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static float ModuleThread_GetDisplayRate( decoder_t *p_dec )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );

    if( !p_owner->p_clock )
        return 1.f;
    vlc_mutex_lock( &p_owner->lock );
    float rate = p_owner->output_rate;
    vlc_mutex_unlock( &p_owner->lock );
    return rate;
}
