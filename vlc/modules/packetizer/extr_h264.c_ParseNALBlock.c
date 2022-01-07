
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_29__ {int i_idr_pic_id; } ;
typedef TYPE_3__ h264_slice_t ;
struct TYPE_30__ {TYPE_5__* p_sys; } ;
typedef TYPE_4__ decoder_t ;
struct TYPE_28__ {int pp_append; } ;
struct TYPE_27__ {int pp_append; TYPE_6__* p_head; } ;
struct TYPE_31__ {int b_slice; int b_recovered; int b_new_sps; int b_new_pps; scalar_t__ i_frame_dts; scalar_t__ i_frame_pts; int dts; TYPE_2__ frame; int i_next_block_flags; TYPE_1__ leading; int * p_active_pps; TYPE_3__ slice; void* i_recoveryfnum; void* i_recovery_frame_cnt; int p_ccs; int p_active_sps; } ;
typedef TYPE_5__ decoder_sys_t ;
struct TYPE_32__ {int* p_buffer; scalar_t__ i_dts; scalar_t__ i_pts; int i_flags; int i_buffer; struct TYPE_32__* p_next; } ;
typedef TYPE_6__ block_t ;


 int BLOCK_FLAG_AU_END ;
 int BLOCK_FLAG_DROP ;
 int BLOCK_FLAG_END_OF_SEQUENCE ;
 int BLOCK_FLAG_PRIVATE_AUD ;
 int BLOCK_FLAG_PRIVATE_SEI ;
 int DropStoredNAL (TYPE_5__*) ;
 int HxxxParse_AnnexB_SEI (int*,int ,int,int ,TYPE_4__*) ;
 int IsFirstVCLNALUnit (TYPE_3__*,TYPE_3__*) ;
 TYPE_6__* OutputPicture (TYPE_4__*) ;
 int ParseSeiCallback ;
 int ParseSliceHeader (TYPE_4__*,TYPE_6__*,TYPE_3__*) ;
 int PutPPS (TYPE_4__*,TYPE_6__*) ;
 int PutSPS (TYPE_4__*,TYPE_6__*) ;
 int ResetOutputVariables (TYPE_5__*) ;
 void* UINT_MAX ;
 scalar_t__ VLC_TICK_INVALID ;
 int block_ChainLastAppend (int *,TYPE_6__*) ;
 int block_Release (TYPE_6__*) ;
 int cc_storage_reset (int ) ;
 int date_Set (int *,scalar_t__ const) ;
 int msg_Warn (TYPE_4__*,char*) ;

__attribute__((used)) static block_t *ParseNALBlock( decoder_t *p_dec, bool *pb_ts_used, block_t *p_frag )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    block_t *p_pic = ((void*)0);

    const int i_nal_type = p_frag->p_buffer[4]&0x1f;
    const vlc_tick_t i_frag_dts = p_frag->i_dts;
    const vlc_tick_t i_frag_pts = p_frag->i_pts;
    bool b_au_end = p_frag->i_flags & BLOCK_FLAG_AU_END;
    p_frag->i_flags &= ~BLOCK_FLAG_AU_END;

    if( p_sys->b_slice && (!p_sys->p_active_pps || !p_sys->p_active_sps) )
    {
        msg_Warn( p_dec, "waiting for SPS/PPS" );


        DropStoredNAL( p_sys );
        ResetOutputVariables( p_sys );
        cc_storage_reset( p_sys->p_ccs );
    }

    switch( i_nal_type )
    {

        case 139:
        case 137:
        case 136:
        case 135:
        case 133:
        {
            h264_slice_t newslice;

            if( i_nal_type == 133 )
            {
                p_sys->b_recovered = 1;
                p_sys->i_recovery_frame_cnt = UINT_MAX;
                p_sys->i_recoveryfnum = UINT_MAX;
            }

            if( ParseSliceHeader( p_dec, p_frag, &newslice ) )
            {

                if( newslice.i_idr_pic_id == -1 )
                    newslice.i_idr_pic_id = p_sys->slice.i_idr_pic_id;

                bool b_new_picture = IsFirstVCLNALUnit( &p_sys->slice, &newslice );
                if( b_new_picture )
                {

                    for( block_t *p_sei = p_sys->leading.p_head; p_sei; p_sei = p_sei->p_next )
                    {
                        if( (p_sei->i_flags & BLOCK_FLAG_PRIVATE_SEI) == 0 )
                            continue;
                        HxxxParse_AnnexB_SEI( p_sei->p_buffer, p_sei->i_buffer,
                                              1 , ParseSeiCallback, p_dec );
                    }

                    if( p_sys->b_slice )
                        p_pic = OutputPicture( p_dec );
                }


                p_sys->slice = newslice;
            }
            else
            {
                p_sys->p_active_pps = ((void*)0);

            }
            p_sys->b_slice = 1;

            block_ChainLastAppend( &p_sys->frame.pp_append, p_frag );
        } break;



        case 151:
            if( p_sys->b_slice )
                p_pic = OutputPicture( p_dec );


            DropStoredNAL( p_sys );

            p_frag->i_flags |= BLOCK_FLAG_PRIVATE_AUD;

            block_ChainLastAppend( &p_sys->leading.pp_append, p_frag );
        break;

        case 131:
        case 146:
            if( p_sys->b_slice )
                p_pic = OutputPicture( p_dec );


            if( i_nal_type == 131 )
            {
                PutSPS( p_dec, p_frag );
                p_sys->b_new_sps = 1;
            }
            else
            {
                PutPPS( p_dec, p_frag );
                p_sys->b_new_pps = 1;
            }
        break;

        case 140:
            if( p_sys->b_slice )
                p_pic = OutputPicture( p_dec );

            p_frag->i_flags |= BLOCK_FLAG_PRIVATE_SEI;
            block_ChainLastAppend( &p_sys->leading.pp_append, p_frag );
        break;

        case 130:
        case 145:
        case 129:
        case 150:
        case 144:
        case 143:
            if( p_sys->b_slice )
                p_pic = OutputPicture( p_dec );

            block_ChainLastAppend( &p_sys->leading.pp_append, p_frag );
        break;



        case 149:
        case 148:

            block_ChainLastAppend( &p_sys->frame.pp_append, p_frag );


            p_sys->i_next_block_flags |= BLOCK_FLAG_END_OF_SEQUENCE;
            if( p_sys->b_slice )
                p_pic = OutputPicture( p_dec );
        break;

        case 132:
        case 128:
        case 147:
        case 134:
        case 138:
        case 142:
        case 141:
        default:
            block_ChainLastAppend( &p_sys->frame.pp_append, p_frag );
        break;
    }

    *pb_ts_used = 0;
    if( p_sys->i_frame_dts == VLC_TICK_INVALID &&
        p_sys->i_frame_pts == VLC_TICK_INVALID )
    {
        p_sys->i_frame_dts = i_frag_dts;
        p_sys->i_frame_pts = i_frag_pts;
        *pb_ts_used = 1;
        if( i_frag_dts != VLC_TICK_INVALID )
            date_Set( &p_sys->dts, i_frag_dts );
    }

    if( p_sys->b_slice && b_au_end && !p_pic )
    {
        p_pic = OutputPicture( p_dec );
    }

    if( p_pic && (p_pic->i_flags & BLOCK_FLAG_DROP) )
    {
        block_Release( p_pic );
        p_pic = ((void*)0);
    }

    return p_pic;
}
