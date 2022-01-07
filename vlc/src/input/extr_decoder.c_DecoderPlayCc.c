
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int i_608_channels; int i_708_channels; } ;
struct TYPE_4__ {int ** pp_decoder; TYPE_2__ desc; } ;
struct decoder_owner {int lock; int p_fifo; TYPE_1__ cc; } ;
typedef int decoder_t ;
typedef TYPE_2__ decoder_cc_desc_t ;
typedef int block_t ;


 int * block_Duplicate (int *) ;
 int block_FifoPut (int ,int *) ;
 int block_Release (int *) ;
 struct decoder_owner* dec_get_owner (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void DecoderPlayCc( struct decoder_owner *p_owner, block_t *p_cc,
                           const decoder_cc_desc_t *p_desc )
{
    vlc_mutex_lock( &p_owner->lock );

    p_owner->cc.desc = *p_desc;



    uint64_t i_bitmap = p_owner->cc.desc.i_608_channels |
                        p_owner->cc.desc.i_708_channels;

    for( int i=0; i_bitmap > 0; i_bitmap >>= 1, i++ )
    {
        decoder_t *p_ccdec = p_owner->cc.pp_decoder[i];
        struct decoder_owner *p_ccowner = dec_get_owner( p_ccdec );
        if( !p_ccdec )
            continue;

        if( i_bitmap > 1 )
        {
            block_FifoPut( p_ccowner->p_fifo, block_Duplicate(p_cc) );
        }
        else
        {
            block_FifoPut( p_ccowner->p_fifo, p_cc );
            p_cc = ((void*)0);
        }
    }

    vlc_mutex_unlock( &p_owner->lock );

    if( p_cc )
        block_Release( p_cc );
}
