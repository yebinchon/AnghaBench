
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_9__ {scalar_t__ i_out_offset; TYPE_1__* p_out_buf; } ;
typedef TYPE_3__ filter_sys_t ;
struct TYPE_7__ {int* p_buffer; scalar_t__ i_buffer; } ;


 scalar_t__ SPDIF_HEADER_SIZE ;
 int assert (int) ;
 int set_16 (TYPE_2__*,int*,scalar_t__) ;
 int write_padding (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static void write_finalize( filter_t *p_filter, uint16_t i_data_type,
                            uint8_t i_length_mul )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    assert( p_sys->p_out_buf != ((void*)0) );
    assert( i_data_type != 0 );
    uint8_t *p_out = p_sys->p_out_buf->p_buffer;


    assert( p_sys->i_out_offset > SPDIF_HEADER_SIZE );
    assert( i_length_mul == 1 || i_length_mul == 8 );

    set_16( p_filter, &p_out[0], 0xf872 );
    set_16( p_filter, &p_out[2], 0x4e1f );
    set_16( p_filter, &p_out[4], i_data_type );

    set_16( p_filter, &p_out[6],
              ( p_sys->i_out_offset - SPDIF_HEADER_SIZE ) * i_length_mul );


    if( p_sys->i_out_offset < p_sys->p_out_buf->i_buffer )
        write_padding( p_filter,
                       p_sys->p_out_buf->i_buffer - p_sys->i_out_offset );
}
