
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * p_description; int fmt_out; } ;
struct decoder_owner {int b_fmt_description; int * p_description; int fmt; int lock; TYPE_1__ dec; } ;
typedef TYPE_1__ decoder_t ;


 int atomic_store_explicit (int *,int,int ) ;
 int es_format_Clean (int *) ;
 int es_format_Copy (int *,int *) ;
 int memory_order_release ;
 int vlc_meta_Delete (int *) ;
 int vlc_mutex_assert (int *) ;

__attribute__((used)) static void DecoderUpdateFormatLocked( struct decoder_owner *p_owner )
{
    decoder_t *p_dec = &p_owner->dec;

    vlc_mutex_assert( &p_owner->lock );

    es_format_Clean( &p_owner->fmt );
    es_format_Copy( &p_owner->fmt, &p_dec->fmt_out );


    if( p_dec->p_description != ((void*)0) )
    {
        if( p_owner->p_description != ((void*)0) )
            vlc_meta_Delete( p_owner->p_description );
        p_owner->p_description = p_dec->p_description;
        p_dec->p_description = ((void*)0);
    }

    atomic_store_explicit( &p_owner->b_fmt_description, 1,
                           memory_order_release );
}
