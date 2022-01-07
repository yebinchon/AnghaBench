
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_13__ {int i_pack_len; scalar_t__ i_cur_cell; int i_title; int i_titles; scalar_t__ i_cur_block; scalar_t__ i_title_offset; int p_title; TYPE_1__* p_cur_pgc; scalar_t__ i_next_vobu; int p_vts_file; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_11__ {scalar_t__ nr_of_cells; } ;


 int DVDReadBlocks (int ,scalar_t__,int,int *) ;
 int DVD_BLOCK_READ_ONCE ;
 int DVD_VIDEO_LB_LEN ;
 int DemuxBlock (TYPE_2__*,int *,int) ;
 int DvdReadHandleDSI (TYPE_2__*,int *) ;
 scalar_t__ DvdReadSetArea (TYPE_2__*,int,int ,int) ;
 int VLC_DEMUXER_EOF ;
 scalar_t__ VLC_SUCCESS ;
 int _ (char*) ;
 int __MIN (int,int) ;
 int msg_Dbg (TYPE_2__*,char*,int,int,scalar_t__) ;
 int msg_Err (TYPE_2__*,char*,int,...) ;
 scalar_t__ unlikely (int) ;
 int vlc_dialog_display_error (TYPE_2__*,int ,int ,int,...) ;

__attribute__((used)) static int Demux( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if(unlikely(!p_sys->p_vts_file))
        return VLC_DEMUXER_EOF;

    uint8_t p_buffer[DVD_VIDEO_LB_LEN * DVD_BLOCK_READ_ONCE];
    int i_blocks_once, i_read;
    if( !p_sys->i_pack_len )
    {

        if( DVDReadBlocks( p_sys->p_title, p_sys->i_next_vobu,
                           1, p_buffer ) != 1 )
        {
            msg_Err( p_demux, "read failed for block %d", p_sys->i_next_vobu );
            vlc_dialog_display_error( p_demux, _("Playback failure"),
                          _("DVDRead could not read block %d."),
                          p_sys->i_next_vobu );
            return -1;
        }




        DemuxBlock( p_demux, p_buffer, DVD_VIDEO_LB_LEN );


        DvdReadHandleDSI( p_demux, p_buffer );


        if( p_sys->i_cur_cell >= p_sys->p_cur_pgc->nr_of_cells )
        {
            int k = p_sys->i_title;


            while( k < p_sys->i_titles && DvdReadSetArea( p_demux, ++k, 0, -1 ) != VLC_SUCCESS )
            {
                msg_Err(p_demux, "Failed next title, trying another: %i", k );
                if( k >= p_sys->i_titles )
                    return 0;
            }
        }

        if( p_sys->i_pack_len >= 1024 )
        {
            msg_Err( p_demux, "i_pack_len >= 1024 (%i). "
                     "This shouldn't happen!", p_sys->i_pack_len );
            return 0;
        }

        p_sys->i_cur_block++;
        p_sys->i_title_offset++;
    }

    if( p_sys->i_cur_cell >= p_sys->p_cur_pgc->nr_of_cells )
    {
        int k = p_sys->i_title;


        while( k < p_sys->i_titles && DvdReadSetArea( p_demux, ++k, 0, -1 ) != VLC_SUCCESS )
        {
            msg_Err(p_demux, "Failed next title, trying another: %i", k );
            if( k >= p_sys->i_titles )
                return 0;
        }
    }




    i_blocks_once = __MIN( p_sys->i_pack_len, DVD_BLOCK_READ_ONCE );
    p_sys->i_pack_len -= i_blocks_once;


    i_read = DVDReadBlocks( p_sys->p_title, p_sys->i_cur_block,
                            i_blocks_once, p_buffer );
    if( i_read != i_blocks_once )
    {
        msg_Err( p_demux, "read failed for %d/%d blocks at 0x%02x",
                 i_read, i_blocks_once, p_sys->i_cur_block );
        vlc_dialog_display_error( p_demux, _("Playback failure"),
                        _("DVDRead could not read %d/%d blocks at 0x%02x."),
                        i_read, i_blocks_once, p_sys->i_cur_block );
        return -1;
    }

    p_sys->i_cur_block += i_read;
    p_sys->i_title_offset += i_read;






    for( int i = 0; i < i_read; i++ )
    {
        DemuxBlock( p_demux, p_buffer + i * DVD_VIDEO_LB_LEN,
                    DVD_VIDEO_LB_LEN );
    }

    return 1;
}
