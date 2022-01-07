
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* pf_decode ) (TYPE_1__*,TYPE_2__*) ;} ;
struct decoder_owner {int error; TYPE_1__ dec; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_9__ {int i_flags; } ;
typedef TYPE_2__ block_t ;


 int BLOCK_FLAG_CORE_PRIVATE_RELOADED ;
 int DecoderThread_ProcessInput (struct decoder_owner*,TYPE_2__*) ;
 int RequestReload (struct decoder_owner*) ;



 int block_Release (TYPE_2__*) ;
 int stub1 (TYPE_1__*,TYPE_2__*) ;
 int unlikely (int ) ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static void DecoderThread_DecodeBlock( struct decoder_owner *p_owner, block_t *p_block )
{
    decoder_t *p_dec = &p_owner->dec;

    int ret = p_dec->pf_decode( p_dec, p_block );
    switch( ret )
    {
        case 128:
            break;
        case 130:
            p_owner->error = 1;
            break;
        case 129:
            RequestReload( p_owner );
            if( unlikely( p_block == ((void*)0) ) )
                break;
            if( !( p_block->i_flags & BLOCK_FLAG_CORE_PRIVATE_RELOADED ) )
            {
                p_block->i_flags |= BLOCK_FLAG_CORE_PRIVATE_RELOADED;
                DecoderThread_ProcessInput( p_owner, p_block );
            }
            else
                block_Release( p_block );
            break;
        default:
            vlc_assert_unreachable();
    }
}
