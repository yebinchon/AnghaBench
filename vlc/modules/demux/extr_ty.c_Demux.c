
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {long l_rec_size; int rec_type; int b_ext; } ;
typedef TYPE_1__ ty_rec_hdr_t ;
struct TYPE_20__ {int s; TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_21__ {size_t i_cur_rec; size_t i_num_recs; TYPE_1__* rec_hdrs; scalar_t__ b_first_chunk; scalar_t__ eof; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_22__ {int i_dts; int i_pts; } ;
typedef TYPE_4__ block_t ;


 int DemuxRecAudio (TYPE_2__*,TYPE_1__*,TYPE_4__*) ;
 int DemuxRecCc (TYPE_2__*,TYPE_1__*,TYPE_4__*) ;
 int DemuxRecVideo (TYPE_2__*,TYPE_1__*,TYPE_4__*) ;
 int VLC_DEMUXER_EOF ;
 int VLC_DEMUXER_SUCCESS ;
 int VLC_TICK_INVALID ;
 int block_Release (TYPE_4__*) ;
 scalar_t__ get_chunk_header (TYPE_2__*) ;
 int msg_Dbg (TYPE_2__*,char*,int) ;
 TYPE_4__* vlc_stream_Block (int ,long const) ;

__attribute__((used)) static int Demux( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    ty_rec_hdr_t *p_rec;
    block_t *p_block_in = ((void*)0);




    if( p_sys->eof )
        return VLC_DEMUXER_EOF;
    if( p_sys->b_first_chunk || p_sys->i_cur_rec >= p_sys->i_num_recs )
    {
        if( get_chunk_header(p_demux) == 0 || p_sys->i_num_recs == 0 )
            return VLC_DEMUXER_EOF;
    }




    p_rec = &p_sys->rec_hdrs[p_sys->i_cur_rec];

    if( !p_rec->b_ext )
    {
        const long l_rec_size = p_rec->l_rec_size;




        if( l_rec_size <= 0 )
        {

            p_sys->i_cur_rec++;
            return VLC_DEMUXER_SUCCESS;
        }


        if( !( p_block_in = vlc_stream_Block( p_demux->s, l_rec_size ) ) )
            return VLC_DEMUXER_EOF;


        p_block_in->i_pts =
        p_block_in->i_dts = VLC_TICK_INVALID;
    }
    switch( p_rec->rec_type )
    {
        case 0xe0:
            DemuxRecVideo( p_demux, p_rec, p_block_in );
            break;

        case 0xc0:
            DemuxRecAudio( p_demux, p_rec, p_block_in );
            break;

        case 0x01:
        case 0x02:

            DemuxRecCc( p_demux, p_rec, p_block_in );
            break;

        default:
            msg_Dbg(p_demux, "Invalid record type 0x%02x", p_rec->rec_type );


        case 0x03:
        case 0x05:
            if( p_block_in )
                block_Release( p_block_in );
    }


    p_sys->i_cur_rec++;
    return VLC_DEMUXER_SUCCESS;
}
