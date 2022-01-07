
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct audio_buf_info {scalar_t__ bytes; } ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_9__ {int i_sample_rate; scalar_t__ b_stereo; int i_fd; TYPE_3__* p_block; int i_max_frame_size; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_10__ {int i_buffer; scalar_t__ i_dts; scalar_t__ i_pts; int p_buffer; } ;
typedef TYPE_3__ block_t ;


 int SNDCTL_DSP_GETISPACE ;
 TYPE_3__* block_Alloc (int ) ;
 scalar_t__ ioctl (int ,int ,struct audio_buf_info*) ;
 int msg_Warn (TYPE_1__*,char*) ;
 int read (int ,int ,int ) ;
 scalar_t__ vlc_tick_from_samples (int,int) ;
 scalar_t__ vlc_tick_now () ;

__attribute__((used)) static block_t* GrabAudio( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    struct audio_buf_info buf_info;
    int i_read = 0, i_correct;
    block_t *p_block;

    if( p_sys->p_block ) p_block = p_sys->p_block;
    else p_block = block_Alloc( p_sys->i_max_frame_size );

    if( !p_block )
    {
        msg_Warn( p_demux, "cannot get block" );
        return ((void*)0);
    }

    p_sys->p_block = p_block;

    i_read = read( p_sys->i_fd, p_block->p_buffer,
                p_sys->i_max_frame_size );

    if( i_read <= 0 ) return ((void*)0);

    p_block->i_buffer = i_read;
    p_sys->p_block = ((void*)0);


    i_correct = i_read;
    if( ioctl( p_sys->i_fd, SNDCTL_DSP_GETISPACE, &buf_info ) == 0 )
    {
        i_correct += buf_info.bytes;
    }


    p_block->i_pts = p_block->i_dts =
        vlc_tick_now() - vlc_tick_from_samples(i_correct,
                        2 * ( p_sys->b_stereo ? 2 : 1) * p_sys->i_sample_rate);

    return p_block;
}
