
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_14__ {int i_packet_size; int i_pk_used; int i_preroll_time; scalar_t__ i_pk_frame; scalar_t__ i_dts_first; TYPE_6__* pk; scalar_t__ i_pk_dts; scalar_t__ b_asf_http; } ;
typedef TYPE_2__ sout_mux_sys_t ;
typedef int bo_t ;
struct TYPE_15__ {int i_buffer; int i_flags; struct TYPE_15__* p_next; scalar_t__ i_dts; int * p_buffer; } ;
typedef TYPE_3__ block_t ;
struct TYPE_16__ {int i_id; int i_sequence; scalar_t__ b_audio_correction; } ;
typedef TYPE_4__ asf_track_t ;
struct TYPE_17__ {int * p_buffer; } ;


 int BLOCK_FLAG_TYPE_B ;
 int BLOCK_FLAG_TYPE_P ;
 int MS_FROM_VLC_TICK (scalar_t__) ;
 int __MIN (int,int) ;
 TYPE_3__* asf_packet_flush (TYPE_1__*) ;
 TYPE_6__* block_Alloc (int) ;
 int block_Release (TYPE_3__*) ;
 int bo_add_mem (int *,int *,int) ;
 int bo_add_u8 (int *,int) ;
 int bo_addle_u16 (int *,int) ;
 int bo_addle_u32 (int *,int) ;
 int bo_init (int *,int *,int) ;

__attribute__((used)) static block_t *asf_packet_create( sout_mux_t *p_mux,
                                   asf_track_t *tk, block_t *data )
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;

    int i_data = data->i_buffer;
    int i_pos = 0;
    uint8_t *p_data= data->p_buffer;
    block_t *first = ((void*)0), **last = &first;
    int i_preheader = p_sys->b_asf_http ? 12 : 0;

    while( i_pos < i_data )
    {
        bo_t bo;
        int i_payload;

        if( p_sys->pk == ((void*)0) )
        {
            p_sys->pk = block_Alloc( p_sys->i_packet_size + i_preheader );

            p_sys->i_pk_used = 14 + i_preheader;
            p_sys->i_pk_frame = 0;
            p_sys->i_pk_dts = data->i_dts;
        }

        bo_init( &bo, &p_sys->pk->p_buffer[p_sys->i_pk_used],
                 p_sys->i_packet_size - p_sys->i_pk_used );


        i_payload = __MIN( i_data - i_pos,
                           p_sys->i_packet_size - p_sys->i_pk_used - 17 );

        if( tk->b_audio_correction && p_sys->i_pk_frame && i_payload < i_data )
        {

            *last = asf_packet_flush( p_mux );
            last = &(*last)->p_next;
            continue;
        }

        bo_add_u8 ( &bo, !(data->i_flags & BLOCK_FLAG_TYPE_P ||
                      data->i_flags & BLOCK_FLAG_TYPE_B) ?
                      0x80 | tk->i_id : tk->i_id );
        bo_add_u8 ( &bo, tk->i_sequence );
        bo_addle_u32( &bo, i_pos );
        bo_add_u8 ( &bo, 0x08 );
        bo_addle_u32( &bo, i_data );
        bo_addle_u32( &bo, MS_FROM_VLC_TICK(data->i_dts - p_sys->i_dts_first) +
                      p_sys->i_preroll_time );
        bo_addle_u16( &bo, i_payload );
        bo_add_mem ( &bo, &p_data[i_pos], i_payload );
        i_pos += i_payload;
        p_sys->i_pk_used += 17 + i_payload;

        p_sys->i_pk_frame++;

        if( p_sys->i_pk_used + 17 >= p_sys->i_packet_size )
        {

            *last = asf_packet_flush( p_mux );
            last = &(*last)->p_next;
        }
    }

    tk->i_sequence++;
    block_Release( data );

    return first;
}
