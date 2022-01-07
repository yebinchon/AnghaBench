
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int jshort ;
typedef int jfloat ;
typedef int jbyte ;
struct TYPE_22__ {size_t i_buffer; scalar_t__ p_buffer; } ;
typedef TYPE_5__ block_t ;
struct TYPE_23__ {TYPE_7__* sys; } ;
typedef TYPE_6__ audio_output_t ;
struct TYPE_19__ {int p_data; } ;
struct TYPE_20__ {TYPE_2__ bytebuffer; int p_floatarray; int p_shortarray; int p_bytearray; } ;
struct TYPE_21__ {size_t i_size; size_t i_write; size_t i_read; TYPE_3__ u; } ;
struct TYPE_18__ {scalar_t__ i_format; } ;
struct TYPE_24__ {int i_write_type; int lock; int thread_cond; int b_thread_waiting; TYPE_4__ circular; scalar_t__ b_error; int aout_cond; TYPE_1__ fmt; int p_chan_table; scalar_t__ i_chans_to_reorder; scalar_t__ b_passthrough; } ;
typedef TYPE_7__ aout_sys_t ;
struct TYPE_25__ {int (* SetFloatArrayRegion ) (TYPE_8__**,int ,size_t,size_t,int *) ;int (* SetShortArrayRegion ) (TYPE_8__**,int ,size_t,size_t,int *) ;int (* SetByteArrayRegion ) (TYPE_8__**,int ,size_t,size_t,int *) ;} ;
typedef TYPE_8__* JNIEnv ;


 scalar_t__ ConvertFromIEC61937 (TYPE_6__*,TYPE_5__*) ;
 TYPE_8__** GET_ENV () ;
 scalar_t__ VLC_CODEC_SPDIFB ;





 size_t __MIN (size_t,size_t) ;
 int aout_ChannelReorder (scalar_t__,size_t,scalar_t__,int ,scalar_t__) ;
 int block_Release (TYPE_5__*) ;
 int memcpy (int ,int ,size_t) ;
 int stub1 (TYPE_8__**,int ,size_t,size_t,int *) ;
 int stub2 (TYPE_8__**,int ,size_t,size_t,int *) ;
 int stub3 (TYPE_8__**,int ,size_t,size_t,int *) ;
 int vlc_cond_signal (int *) ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void
Play( audio_output_t *p_aout, block_t *p_buffer, vlc_tick_t i_date )
{
    JNIEnv *env = ((void*)0);
    size_t i_buffer_offset = 0;
    aout_sys_t *p_sys = p_aout->sys;

    if( p_sys->b_passthrough && p_sys->fmt.i_format == VLC_CODEC_SPDIFB
     && ConvertFromIEC61937( p_aout, p_buffer ) != 0 )
    {
        block_Release(p_buffer);
        return;
    }

    vlc_mutex_lock( &p_sys->lock );

    if( p_sys->b_error || !( env = GET_ENV() ) )
        goto bailout;

    if( p_sys->i_chans_to_reorder )
       aout_ChannelReorder( p_buffer->p_buffer, p_buffer->i_buffer,
                            p_sys->i_chans_to_reorder, p_sys->p_chan_table,
                            p_sys->fmt.i_format );

    while( i_buffer_offset < p_buffer->i_buffer && !p_sys->b_error )
    {
        size_t i_circular_free;
        size_t i_data_offset;
        size_t i_data_size;


        while( !p_sys->b_error && ( i_circular_free = p_sys->circular.i_size -
               ( p_sys->circular.i_write - p_sys->circular.i_read ) ) == 0 )
            vlc_cond_wait( &p_sys->aout_cond, &p_sys->lock );
        if( p_sys->b_error )
            goto bailout;

        i_data_offset = p_sys->circular.i_write % p_sys->circular.i_size;
        i_data_size = __MIN( p_buffer->i_buffer - i_buffer_offset,
                             p_sys->circular.i_size - i_data_offset );
        i_data_size = __MIN( i_data_size, i_circular_free );

        switch( p_sys->i_write_type )
        {
        case 132:
        case 131:
            (*env)->SetByteArrayRegion( env, p_sys->circular.u.p_bytearray,
                                        i_data_offset, i_data_size,
                                        (jbyte *)p_buffer->p_buffer
                                        + i_buffer_offset);
            break;
        case 128:
            i_data_offset &= ~1;
            i_data_size &= ~1;
            (*env)->SetShortArrayRegion( env, p_sys->circular.u.p_shortarray,
                                         i_data_offset / 2, i_data_size / 2,
                                         (jshort *)p_buffer->p_buffer
                                         + i_buffer_offset / 2);
            break;
        case 129:
            i_data_offset &= ~3;
            i_data_size &= ~3;
            (*env)->SetFloatArrayRegion( env, p_sys->circular.u.p_floatarray,
                                         i_data_offset / 4, i_data_size / 4,
                                         (jfloat *)p_buffer->p_buffer
                                         + i_buffer_offset / 4);

            break;
        case 130:
            memcpy( p_sys->circular.u.bytebuffer.p_data + i_data_offset,
                    p_buffer->p_buffer + i_buffer_offset, i_data_size );
            break;
        }

        i_buffer_offset += i_data_size;
        p_sys->circular.i_write += i_data_size;

        if( !p_sys->b_thread_waiting )
            vlc_cond_signal( &p_sys->thread_cond );
    }

bailout:
    vlc_mutex_unlock( &p_sys->lock );
    block_Release( p_buffer );
    (void) i_date;
}
