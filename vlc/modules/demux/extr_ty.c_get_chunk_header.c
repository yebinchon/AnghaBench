
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_7__ {scalar_t__ i_cur_chunk; scalar_t__ i_stuff_cnt; int eof; int i_num_recs; int i_seq_rec; int b_first_chunk; int* rec_hdrs; scalar_t__ i_cur_rec; } ;
typedef TYPE_2__ demux_sys_t ;


 int CHUNK_SIZE ;
 scalar_t__ TIVO_PES_FILEID ;
 scalar_t__ U32_AT (int const*) ;
 scalar_t__ VLC_SUCCESS ;
 int free (int*) ;
 int msg_Dbg (TYPE_1__*,char*,scalar_t__) ;
 int* parse_chunk_headers (int*,int,int*) ;
 scalar_t__ parse_master (TYPE_1__*) ;
 int vlc_stream_Peek (int ,int const**,int) ;
 int vlc_stream_Read (int ,int*,int) ;
 int* xmalloc (int) ;

__attribute__((used)) static int get_chunk_header(demux_t *p_demux)
{
    int i_readSize, i_num_recs;
    uint8_t *p_hdr_buf;
    const uint8_t *p_peek;
    demux_sys_t *p_sys = p_demux->p_sys;
    int i_payload_size;

    msg_Dbg(p_demux, "parsing ty chunk #%d", p_sys->i_cur_chunk );


    if (p_sys->i_stuff_cnt > 0) {
        if(vlc_stream_Read(p_demux->s, ((void*)0), p_sys->i_stuff_cnt) != p_sys->i_stuff_cnt)
            return 0;
        p_sys->i_stuff_cnt = 0;
    }


    i_readSize = vlc_stream_Peek( p_demux->s, &p_peek, 4 );
    p_sys->i_cur_chunk++;

    if ( (i_readSize < 4) || ( U32_AT(&p_peek[ 0 ] ) == 0 ))
    {

        p_sys->eof = 1;
        return 0;
    }


    if( U32_AT( &p_peek[ 0 ] ) == TIVO_PES_FILEID )
    {

        if(parse_master(p_demux) != VLC_SUCCESS)
            return 0;
        return get_chunk_header(p_demux);
    }


    if (p_peek[3] & 0x80)
    {

        p_sys->i_num_recs = i_num_recs = (p_peek[1] << 8) + p_peek[0];
        p_sys->i_seq_rec = (p_peek[3] << 8) + p_peek[2];
        if (p_sys->i_seq_rec != 0xffff)
        {
            p_sys->i_seq_rec &= ~0x8000;
        }
    }
    else
    {

        p_sys->i_num_recs = i_num_recs = p_peek[0];
        p_sys->i_seq_rec = p_peek[1];
    }
    p_sys->i_cur_rec = 0;
    p_sys->b_first_chunk = 0;



    free(p_sys->rec_hdrs);
    p_sys->rec_hdrs = ((void*)0);


    if(vlc_stream_Read(p_demux->s, ((void*)0), 4) != 4)
        return 0;


    p_hdr_buf = xmalloc(i_num_recs * 16);
    if (vlc_stream_Read(p_demux->s, p_hdr_buf, i_num_recs * 16) < i_num_recs * 16) {
        free( p_hdr_buf );
        p_sys->eof = 1;
        return 0;
    }

    p_sys->rec_hdrs = parse_chunk_headers(p_hdr_buf, i_num_recs,
            &i_payload_size);
    free(p_hdr_buf);

    p_sys->i_stuff_cnt = CHUNK_SIZE - 4 -
        (p_sys->i_num_recs * 16) - i_payload_size;
    if (p_sys->i_stuff_cnt > 0)
        msg_Dbg( p_demux, "chunk has %d stuff bytes at end",
                 p_sys->i_stuff_cnt );
    return 1;
}
