
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct picture_free_t {TYPE_1__* p_pic; } ;
struct TYPE_25__ {scalar_t__ date; } ;
typedef TYPE_1__ picture_t ;
struct TYPE_26__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_27__ {scalar_t__ i_lastpts; scalar_t__ i_frame_pts_delta; int p_schro; } ;
typedef TYPE_3__ decoder_sys_t ;
struct TYPE_28__ {int i_flags; scalar_t__ i_pts; int i_buffer; int p_buffer; } ;
typedef TYPE_4__ block_t ;
struct TYPE_31__ {int tag; TYPE_4__* priv; int free; } ;
struct TYPE_30__ {int * priv; } ;
struct TYPE_29__ {scalar_t__ value; } ;
typedef TYPE_5__ SchroTag ;
typedef TYPE_6__ SchroFrame ;
typedef TYPE_7__ SchroBuffer ;


 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_DISCONTINUITY ;
 TYPE_6__* CreateSchroFrameFromPic (TYPE_2__*) ;
 int Flush (TYPE_2__*) ;






 int SchroBufferFree ;
 int SetVideoFormat (TYPE_2__*) ;
 int VLCDEC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 int block_Release (TYPE_4__*) ;
 int decoder_QueueVideo (TYPE_2__*,TYPE_1__*) ;
 int free ;
 scalar_t__* malloc (int) ;
 int msg_Err (TYPE_2__*,char*) ;
 TYPE_7__* schro_buffer_new_with_data (int ,int ) ;
 int schro_decoder_add_output_picture (int ,TYPE_6__*) ;
 int schro_decoder_autoparse_push (int ,TYPE_7__*) ;
 int schro_decoder_autoparse_wait (int ) ;
 TYPE_5__* schro_decoder_get_picture_tag (int ) ;
 TYPE_6__* schro_decoder_pull (int ) ;
 int schro_frame_unref (TYPE_6__*) ;
 int schro_tag_free (TYPE_5__*) ;
 int schro_tag_new (scalar_t__*,int ) ;

__attribute__((used)) static int DecodeBlock( decoder_t *p_dec, block_t *p_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( !p_block )
        return VLCDEC_SUCCESS;
    else {



        if( p_block->i_flags & (BLOCK_FLAG_CORRUPTED|BLOCK_FLAG_DISCONTINUITY) )
        {
            Flush( p_dec );
            if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
            {
                block_Release( p_block );
                return VLCDEC_SUCCESS;
            }
        }

        SchroBuffer *p_schrobuffer;
        p_schrobuffer = schro_buffer_new_with_data( p_block->p_buffer, p_block->i_buffer );
        p_schrobuffer->free = SchroBufferFree;
        p_schrobuffer->priv = p_block;
        if( p_block->i_pts != VLC_TICK_INVALID ) {
            vlc_tick_t *p_pts = malloc( sizeof(*p_pts) );
            if( p_pts ) {
                *p_pts = p_block->i_pts;

                p_schrobuffer->tag = schro_tag_new( p_pts, free );
            }
        }



        schro_decoder_autoparse_push( p_sys->p_schro, p_schrobuffer );

    }

    while( 1 )
    {
        SchroFrame *p_schroframe;
        picture_t *p_pic;
        int state = schro_decoder_autoparse_wait( p_sys->p_schro );

        switch( state )
        {
        case 131:
            SetVideoFormat( p_dec );
            break;

        case 130:
            return VLCDEC_SUCCESS;

        case 129:
            p_schroframe = CreateSchroFrameFromPic( p_dec );

            if( !p_schroframe )
            {
                msg_Err( p_dec, "Could not allocate picture for decoder");
                return VLCDEC_SUCCESS;
            }

            schro_decoder_add_output_picture( p_sys->p_schro, p_schroframe);
            break;

        case 128: {
            SchroTag *p_tag = schro_decoder_get_picture_tag( p_sys->p_schro );
            p_schroframe = schro_decoder_pull( p_sys->p_schro );
            if( !p_schroframe || !p_schroframe->priv )
            {


                if( p_tag ) schro_tag_free( p_tag );
                if( p_schroframe ) schro_frame_unref( p_schroframe );
                break;
            }
            p_pic = ((struct picture_free_t*) p_schroframe->priv)->p_pic;
            p_schroframe->priv = ((void*)0);

            if( p_tag )
            {

                p_pic->date = *(vlc_tick_t*) p_tag->value;
                schro_tag_free( p_tag );
            }
            else if( p_sys->i_lastpts != VLC_TICK_INVALID )
            {





                p_pic->date = p_sys->i_lastpts + p_sys->i_frame_pts_delta;
            }
            p_sys->i_lastpts = p_pic->date;

            schro_frame_unref( p_schroframe );
            decoder_QueueVideo( p_dec, p_pic );
            return VLCDEC_SUCCESS;
        }
        case 133:

            break;

        case 132:
            msg_Err( p_dec, "SCHRO_DECODER_ERROR");
            return VLCDEC_SUCCESS;
        }
    }
}
