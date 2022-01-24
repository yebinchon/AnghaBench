#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  s; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_7__ {scalar_t__ i_cur_chunk; scalar_t__ i_stuff_cnt; int eof; int i_num_recs; int i_seq_rec; int b_first_chunk; int* rec_hdrs; scalar_t__ i_cur_rec; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 int CHUNK_SIZE ; 
 scalar_t__ TIVO_PES_FILEID ; 
 scalar_t__ FUNC0 (int const*) ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,scalar_t__) ; 
 int* FUNC3 (int*,int,int*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int const**,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int*,int) ; 
 int* FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(demux_t *p_demux)
{
    int i_readSize, i_num_recs;
    uint8_t *p_hdr_buf;
    const uint8_t *p_peek;
    demux_sys_t *p_sys = p_demux->p_sys;
    int i_payload_size;             /* sum of all records' sizes */

    FUNC2(p_demux, "parsing ty chunk #%d", p_sys->i_cur_chunk );

    /* if we have left-over filler space from the last chunk, get that */
    if (p_sys->i_stuff_cnt > 0) {
        if(FUNC6(p_demux->s, NULL, p_sys->i_stuff_cnt) != p_sys->i_stuff_cnt)
            return 0;
        p_sys->i_stuff_cnt = 0;
    }

    /* read the TY packet header */
    i_readSize = FUNC5( p_demux->s, &p_peek, 4 );
    p_sys->i_cur_chunk++;

    if ( (i_readSize < 4) || ( FUNC0(&p_peek[ 0 ] ) == 0 ))
    {
        /* EOF */
        p_sys->eof = 1;
        return 0;
    }

    /* check if it's a PART Header */
    if( FUNC0( &p_peek[ 0 ] ) == TIVO_PES_FILEID )
    {
        /* parse master chunk */
        if(FUNC4(p_demux) != VLC_SUCCESS)
            return 0;
        return FUNC8(p_demux);
    }

    /* number of records in chunk (8- or 16-bit number) */
    if (p_peek[3] & 0x80)
    {
        /* 16 bit rec cnt */
        p_sys->i_num_recs = i_num_recs = (p_peek[1] << 8) + p_peek[0];
        p_sys->i_seq_rec = (p_peek[3] << 8) + p_peek[2];
        if (p_sys->i_seq_rec != 0xffff)
        {
            p_sys->i_seq_rec &= ~0x8000;
        }
    }
    else
    {
        /* 8 bit reclen - tivo 1.3 format */
        p_sys->i_num_recs = i_num_recs = p_peek[0];
        p_sys->i_seq_rec = p_peek[1];
    }
    p_sys->i_cur_rec = 0;
    p_sys->b_first_chunk = false;

    /*msg_Dbg( p_demux, "chunk has %d records", i_num_recs );*/

    FUNC1(p_sys->rec_hdrs);
    p_sys->rec_hdrs = NULL;

    /* skip past the 4 bytes we "peeked" earlier */
    if(FUNC6(p_demux->s, NULL, 4) != 4)
        return 0;

    /* read the record headers into a temp buffer */
    p_hdr_buf = FUNC7(i_num_recs * 16);
    if (FUNC6(p_demux->s, p_hdr_buf, i_num_recs * 16) < i_num_recs * 16) {
        FUNC1( p_hdr_buf );
        p_sys->eof = true;
        return 0;
    }
    /* parse them */
    p_sys->rec_hdrs = FUNC3(p_hdr_buf, i_num_recs,
            &i_payload_size);
    FUNC1(p_hdr_buf);

    p_sys->i_stuff_cnt = CHUNK_SIZE - 4 -
        (p_sys->i_num_recs * 16) - i_payload_size;
    if (p_sys->i_stuff_cnt > 0)
        FUNC2( p_demux, "chunk has %d stuff bytes at end",
                 p_sys->i_stuff_cnt );
    return 1;
}