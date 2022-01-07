
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int stream_t ;
struct TYPE_4__ {int i_video_standard; int i_video_format_token; TYPE_1__* field_info; int i_nb_fields_per_frame; int i_frame_height_in_pixels; int i_frame_width_in_pixels; int i_frame_aspect_ratio; int i_v_total_in_lines; int i_h_total_in_t; int i_vertical_refresh; } ;
typedef TYPE_2__ avi_chunk_vprp_t ;
typedef int avi_chunk_t ;
struct TYPE_3__ {int i_video_y_valid_start_line; int i_video_x_offset_in_t; int i_valid_bm_y_offset; int i_valid_bm_x_offset; int i_valid_bm_width; int i_valid_bm_height; int i_compressed_bm_width; int i_compressed_bm_height; } ;


 int AVI_READ4BYTES (int ) ;
 int AVI_READCHUNK_ENTER ;
 int AVI_READCHUNK_EXIT (int ) ;
 int VLC_SUCCESS ;
 unsigned int __MIN (int ,int) ;
 int msg_Dbg (int *,char*,int ,int ) ;

__attribute__((used)) static int AVI_ChunkRead_vprp( stream_t *s, avi_chunk_t *p_chk )
{
    avi_chunk_vprp_t *p_vprp = (avi_chunk_vprp_t*)p_chk;

    AVI_READCHUNK_ENTER;

    AVI_READ4BYTES( p_vprp->i_video_format_token );
    AVI_READ4BYTES( p_vprp->i_video_standard );
    AVI_READ4BYTES( p_vprp->i_vertical_refresh );
    AVI_READ4BYTES( p_vprp->i_h_total_in_t );
    AVI_READ4BYTES( p_vprp->i_v_total_in_lines );
    AVI_READ4BYTES( p_vprp->i_frame_aspect_ratio );
    AVI_READ4BYTES( p_vprp->i_frame_width_in_pixels );
    AVI_READ4BYTES( p_vprp->i_frame_height_in_pixels );
    AVI_READ4BYTES( p_vprp->i_nb_fields_per_frame );
    for( unsigned i = 0; i < __MIN( p_vprp->i_nb_fields_per_frame, 2 ); i++ )
    {
        AVI_READ4BYTES( p_vprp->field_info[i].i_compressed_bm_height );
        AVI_READ4BYTES( p_vprp->field_info[i].i_compressed_bm_width );
        AVI_READ4BYTES( p_vprp->field_info[i].i_valid_bm_height );
        AVI_READ4BYTES( p_vprp->field_info[i].i_valid_bm_width );
        AVI_READ4BYTES( p_vprp->field_info[i].i_valid_bm_x_offset );
        AVI_READ4BYTES( p_vprp->field_info[i].i_valid_bm_y_offset );
        AVI_READ4BYTES( p_vprp->field_info[i].i_video_x_offset_in_t );
        AVI_READ4BYTES( p_vprp->field_info[i].i_video_y_valid_start_line );
    }





    AVI_READCHUNK_EXIT( VLC_SUCCESS );
}
