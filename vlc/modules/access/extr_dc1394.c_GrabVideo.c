
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_12__ {int width; int height; TYPE_5__* frame; int camera; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_13__ {int i_dts; int i_pts; int p_buffer; } ;
typedef TYPE_3__ block_t ;
struct TYPE_14__ {int* size; scalar_t__ image; } ;


 int DC1394_CAPTURE_POLICY_WAIT ;
 scalar_t__ DC1394_SUCCESS ;
 TYPE_3__* block_Alloc (int) ;
 int block_Release (TYPE_3__*) ;
 scalar_t__ dc1394_capture_dequeue (int ,int ,TYPE_5__**) ;
 int dc1394_capture_enqueue (int ,TYPE_5__*) ;
 int memcpy (int ,char const*,int) ;
 int msg_Err (TYPE_1__*,char*) ;
 int vlc_tick_now () ;

__attribute__((used)) static block_t *GrabVideo( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t *p_block = ((void*)0);

    if( dc1394_capture_dequeue( p_sys->camera,
                DC1394_CAPTURE_POLICY_WAIT,
                &p_sys->frame ) != DC1394_SUCCESS )
    {
        msg_Err( p_demux, "Unable to capture a frame" );
        return ((void*)0);
    }

    p_block = block_Alloc( p_sys->frame->size[0] * p_sys->frame->size[1] * 2 );
    if( !p_block )
    {
        msg_Err( p_demux, "Can not get block" );
        return ((void*)0);
    }

    if( !p_sys->frame->image )
    {
        msg_Err (p_demux, "Capture buffer empty");
        block_Release( p_block );
        return ((void*)0);
    }

    memcpy( p_block->p_buffer, (const char *)p_sys->frame->image,
            p_sys->width * p_sys->height * 2 );

    p_block->i_pts = p_block->i_dts = vlc_tick_now();
    dc1394_capture_enqueue( p_sys->camera, p_sys->frame );
    return p_block;
}
