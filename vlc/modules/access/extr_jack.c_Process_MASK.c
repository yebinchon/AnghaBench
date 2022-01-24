#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int jack_nframes_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_6__ {unsigned int i_channels; size_t jack_sample_size; scalar_t__* pp_jack_buffer; int /*<<< orphan*/  p_jack_ringbuffer; int /*<<< orphan*/ * pp_jack_port_input; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 

int FUNC5( jack_nframes_t i_frames, void *p_arg )
{
    demux_t *p_demux = ( demux_t* )p_arg;
    demux_sys_t *p_sys = p_demux->p_sys;

    /* Get and interlace buffers */
    for ( unsigned i = 0; i < p_sys->i_channels ; i++ )
    {
        p_sys->pp_jack_buffer[i] = FUNC0(
            p_sys->pp_jack_port_input[i], i_frames );
    }

    /* fill ring buffer with signal */
    for( unsigned j = 0; j < i_frames; j++ )
    {
        for( unsigned i = 0; i <p_sys->i_channels; i++ )
        {
            if( FUNC2( p_sys->p_jack_ringbuffer ) <
                p_sys->jack_sample_size ) {
                FUNC3( p_demux, "buffer overflow");
                return 0; // buffer overflow
            }
            size_t i_write = FUNC1( p_sys->p_jack_ringbuffer,
                                                    ( char * ) (p_sys->pp_jack_buffer[i]+j),
                                                    p_sys->jack_sample_size );
            if (i_write != p_sys->jack_sample_size ) {
                FUNC4( p_demux, "error writing on ring buffer");
            }
        }
    }

    return 0;
}