
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_meta_t ;
struct decoder_owner {int lock; scalar_t__ p_description; int fmt; int b_fmt_description; } ;
typedef int es_format_t ;
typedef int decoder_t ;


 int atomic_exchange_explicit (int *,int,int ) ;
 struct decoder_owner* dec_get_owner (int *) ;
 int es_format_Copy (int *,int *) ;
 int memory_order_acquire ;
 int vlc_meta_Merge (int *,scalar_t__) ;
 int * vlc_meta_New () ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

bool input_DecoderHasFormatChanged( decoder_t *p_dec, es_format_t *p_fmt, vlc_meta_t **pp_meta )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );

    if( !atomic_exchange_explicit( &p_owner->b_fmt_description, 0,
                                   memory_order_acquire ) )
        return 0;

    vlc_mutex_lock( &p_owner->lock );
    if( p_fmt != ((void*)0) )
        es_format_Copy( p_fmt, &p_owner->fmt );

    if( pp_meta )
    {
        *pp_meta = ((void*)0);
        if( p_owner->p_description )
        {
            *pp_meta = vlc_meta_New();
            if( *pp_meta )
                vlc_meta_Merge( *pp_meta, p_owner->p_description );
        }
    }
    vlc_mutex_unlock( &p_owner->lock );
    return 1;
}
