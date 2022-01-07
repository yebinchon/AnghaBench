
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_8__ {size_t i_out_offset; TYPE_1__* p_out_buf; } ;
typedef TYPE_3__ filter_sys_t ;
struct TYPE_6__ {int i_buffer; int * p_buffer; } ;


 int assert (int) ;
 int set_16 (TYPE_2__*,int *,int ) ;

__attribute__((used)) static void write_16( filter_t *p_filter, uint16_t i_val )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    assert( p_sys->p_out_buf != ((void*)0) );

    assert( p_sys->p_out_buf->i_buffer - p_sys->i_out_offset
            >= sizeof( uint16_t ) );
    set_16( p_filter, &p_sys->p_out_buf->p_buffer[p_sys->i_out_offset], i_val );
    p_sys->i_out_offset += sizeof( uint16_t );
}
