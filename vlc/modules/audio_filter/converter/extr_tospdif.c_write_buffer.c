
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_12__ {TYPE_1__* p_out_buf; } ;
typedef TYPE_3__ filter_sys_t ;
struct TYPE_13__ {scalar_t__ i_length; int i_buffer; int p_buffer; } ;
typedef TYPE_4__ block_t ;
struct TYPE_10__ {int i_length; } ;


 int is_big_endian (TYPE_2__*,TYPE_4__*) ;
 int write_data (TYPE_2__*,int ,int ,int ) ;

__attribute__((used)) static void write_buffer( filter_t *p_filter, block_t *p_in_buf )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    write_data( p_filter, p_in_buf->p_buffer, p_in_buf->i_buffer,
                is_big_endian( p_filter, p_in_buf ) );
    p_sys->p_out_buf->i_length += p_in_buf->i_length;
}
