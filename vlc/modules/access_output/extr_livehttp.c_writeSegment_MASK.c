#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int ssize_t ;
struct TYPE_11__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_access_out_t ;
struct TYPE_12__ {size_t stuffing_size; int /*<<< orphan*/  i_handle; int /*<<< orphan*/  aes_ctx; int /*<<< orphan*/ * stuffing_bytes; scalar_t__ key_uri; int /*<<< orphan*/  current_segment_length; TYPE_3__* full_segments; TYPE_3__** full_segments_end; } ;
typedef  TYPE_2__ sout_access_out_sys_t ;
typedef  scalar_t__ gcry_error_t ;
struct TYPE_13__ {size_t i_buffer; int /*<<< orphan*/ * p_buffer; struct TYPE_13__* p_next; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (TYPE_3__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static ssize_t FUNC10( sout_access_out_t *p_access )
{
    sout_access_out_sys_t *p_sys = p_access->p_sys;
    FUNC6( p_access, "Writing all full segments" );

    block_t *output = p_sys->full_segments;
    p_sys->full_segments = NULL;
    p_sys->full_segments_end = &p_sys->full_segments;

    vlc_tick_t current_length = 0;
    FUNC0( output, NULL, NULL, &current_length );

    ssize_t i_write=0;
    bool crypted = false;
    p_sys->current_segment_length = current_length;
    while( output )
    {
        if( p_sys->key_uri && !crypted )
        {
            if( p_sys->stuffing_size )
            {
                output = FUNC1( output, p_sys->stuffing_size, output->i_buffer );
                if( FUNC8(!output ) )
                    return VLC_ENOMEM;
                FUNC5( output->p_buffer, p_sys->stuffing_bytes, p_sys->stuffing_size );
                p_sys->stuffing_size = 0;
            }
            size_t original = output->i_buffer;
            size_t padded = (output->i_buffer + 15 ) & ~15;
            size_t pad = padded - original;
            if( pad )
            {
                p_sys->stuffing_size = 16-pad;
                output->i_buffer -= p_sys->stuffing_size;
                FUNC5(p_sys->stuffing_bytes, &output->p_buffer[output->i_buffer], p_sys->stuffing_size);
            }

            gcry_error_t err = FUNC3( p_sys->aes_ctx,
                                output->p_buffer, output->i_buffer, NULL, 0 );
            if( err )
            {
                FUNC7( p_access, "Encryption failure: %s ", FUNC4(err) );
                return -1;
            }
            crypted=true;

        }

        ssize_t val = FUNC9( p_sys->i_handle, output->p_buffer, output->i_buffer );
        if ( val == -1 )
        {
           if ( errno == EINTR )
              continue;
           return -1;
        }


        if ( (size_t)val >= output->i_buffer )
        {
           block_t *p_next = output->p_next;
           FUNC2 (output);
           output = p_next;
           crypted=false;
        }
        else
        {
           output->p_buffer += val;
           output->i_buffer -= val;
        }
        i_write += val;
    }
    return i_write;
}