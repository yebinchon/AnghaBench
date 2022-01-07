
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ sout_stream_t ;
struct TYPE_14__ {int (* pf_video_postrender_callback ) (int ,int *,int ,int ,int ,size_t,int ) ;int (* pf_video_prerender_callback ) (int ,int **,size_t) ;} ;
typedef TYPE_4__ sout_stream_sys_t ;
struct TYPE_11__ {int i_bits_per_pixel; int i_height; int i_width; } ;
struct TYPE_12__ {TYPE_1__ video; } ;
struct TYPE_15__ {TYPE_2__ format; int p_data; } ;
typedef TYPE_5__ sout_stream_id_sys_t ;
struct TYPE_16__ {size_t i_buffer; int i_pts; int p_buffer; } ;
typedef TYPE_6__ block_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int block_ChainRelease (TYPE_6__*) ;
 int memcpy (int *,int ,size_t) ;
 int msg_Err (TYPE_3__*,char*) ;
 int stub1 (int ,int **,size_t) ;
 int stub2 (int ,int *,int ,int ,int ,size_t,int ) ;

__attribute__((used)) static int SendVideo( sout_stream_t *p_stream, void *_id, block_t *p_buffer )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    sout_stream_id_sys_t *id = (sout_stream_id_sys_t *)_id;
    size_t i_size = p_buffer->i_buffer;
    uint8_t* p_pixels = ((void*)0);


    p_sys->pf_video_prerender_callback( id->p_data, &p_pixels, i_size );

    if (!p_pixels)
    {
        msg_Err( p_stream, "No buffer given!" );
        block_ChainRelease( p_buffer );
        return VLC_EGENERIC;
    }


    memcpy( p_pixels, p_buffer->p_buffer, i_size );

    p_sys->pf_video_postrender_callback( id->p_data, p_pixels,
                                         id->format.video.i_width, id->format.video.i_height,
                                         id->format.video.i_bits_per_pixel, i_size, p_buffer->i_pts );
    block_ChainRelease( p_buffer );
    return VLC_SUCCESS;
}
