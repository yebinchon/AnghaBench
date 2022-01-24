#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  jshort ;
typedef  int /*<<< orphan*/  jfloat ;
typedef  int /*<<< orphan*/  jbyte ;
struct TYPE_22__ {size_t i_buffer; scalar_t__ p_buffer; } ;
typedef  TYPE_5__ block_t ;
struct TYPE_23__ {TYPE_7__* sys; } ;
typedef  TYPE_6__ audio_output_t ;
struct TYPE_19__ {int /*<<< orphan*/  p_data; } ;
struct TYPE_20__ {TYPE_2__ bytebuffer; int /*<<< orphan*/  p_floatarray; int /*<<< orphan*/  p_shortarray; int /*<<< orphan*/  p_bytearray; } ;
struct TYPE_21__ {size_t i_size; size_t i_write; size_t i_read; TYPE_3__ u; } ;
struct TYPE_18__ {scalar_t__ i_format; } ;
struct TYPE_24__ {int i_write_type; int /*<<< orphan*/  lock; int /*<<< orphan*/  thread_cond; int /*<<< orphan*/  b_thread_waiting; TYPE_4__ circular; scalar_t__ b_error; int /*<<< orphan*/  aout_cond; TYPE_1__ fmt; int /*<<< orphan*/  p_chan_table; scalar_t__ i_chans_to_reorder; scalar_t__ b_passthrough; } ;
typedef  TYPE_7__ aout_sys_t ;
struct TYPE_25__ {int /*<<< orphan*/  (* SetFloatArrayRegion ) (TYPE_8__**,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* SetShortArrayRegion ) (TYPE_8__**,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* SetByteArrayRegion ) (TYPE_8__**,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_8__* JNIEnv ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_6__*,TYPE_5__*) ; 
 TYPE_8__** FUNC1 () ; 
 scalar_t__ VLC_CODEC_SPDIFB ; 
#define  WRITE_BYTEARRAY 132 
#define  WRITE_BYTEARRAYV23 131 
#define  WRITE_BYTEBUFFER 130 
#define  WRITE_FLOATARRAY 129 
#define  WRITE_SHORTARRAYV23 128 
 size_t FUNC2 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,size_t,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__**,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__**,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__**,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13( audio_output_t *p_aout, block_t *p_buffer, vlc_tick_t i_date )
{
    JNIEnv *env = NULL;
    size_t i_buffer_offset = 0;
    aout_sys_t *p_sys = p_aout->sys;

    if( p_sys->b_passthrough && p_sys->fmt.i_format == VLC_CODEC_SPDIFB
     && FUNC0( p_aout, p_buffer ) != 0 )
    {
        FUNC4(p_buffer);
        return;
    }

    FUNC11( &p_sys->lock );

    if( p_sys->b_error || !( env = FUNC1() ) )
        goto bailout;

    if( p_sys->i_chans_to_reorder )
       FUNC3( p_buffer->p_buffer, p_buffer->i_buffer,
                            p_sys->i_chans_to_reorder, p_sys->p_chan_table,
                            p_sys->fmt.i_format );

    while( i_buffer_offset < p_buffer->i_buffer && !p_sys->b_error )
    {
        size_t i_circular_free;
        size_t i_data_offset;
        size_t i_data_size;

        /* Wait for enough room in circular buffer */
        while( !p_sys->b_error && ( i_circular_free = p_sys->circular.i_size -
               ( p_sys->circular.i_write - p_sys->circular.i_read ) ) == 0 )
            FUNC10( &p_sys->aout_cond, &p_sys->lock );
        if( p_sys->b_error )
            goto bailout;

        i_data_offset = p_sys->circular.i_write % p_sys->circular.i_size;
        i_data_size = FUNC2( p_buffer->i_buffer - i_buffer_offset,
                             p_sys->circular.i_size - i_data_offset );
        i_data_size = FUNC2( i_data_size, i_circular_free );

        switch( p_sys->i_write_type )
        {
        case WRITE_BYTEARRAY:
        case WRITE_BYTEARRAYV23:
            (*env)->SetByteArrayRegion( env, p_sys->circular.u.p_bytearray,
                                        i_data_offset, i_data_size,
                                        (jbyte *)p_buffer->p_buffer
                                        + i_buffer_offset);
            break;
        case WRITE_SHORTARRAYV23:
            i_data_offset &= ~1;
            i_data_size &= ~1;
            (*env)->SetShortArrayRegion( env, p_sys->circular.u.p_shortarray,
                                         i_data_offset / 2, i_data_size / 2,
                                         (jshort *)p_buffer->p_buffer
                                         + i_buffer_offset / 2);
            break;
        case WRITE_FLOATARRAY:
            i_data_offset &= ~3;
            i_data_size &= ~3;
            (*env)->SetFloatArrayRegion( env, p_sys->circular.u.p_floatarray,
                                         i_data_offset / 4, i_data_size / 4,
                                         (jfloat *)p_buffer->p_buffer
                                         + i_buffer_offset / 4);

            break;
        case WRITE_BYTEBUFFER:
            FUNC5( p_sys->circular.u.bytebuffer.p_data + i_data_offset,
                    p_buffer->p_buffer + i_buffer_offset, i_data_size );
            break;
        }

        i_buffer_offset += i_data_size;
        p_sys->circular.i_write += i_data_size;

        if( !p_sys->b_thread_waiting )
            FUNC9( &p_sys->thread_cond );
    }

bailout:
    FUNC12( &p_sys->lock );
    FUNC4( p_buffer );
    (void) i_date;
}