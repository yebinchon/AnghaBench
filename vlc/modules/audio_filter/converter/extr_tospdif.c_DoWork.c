
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_22__ {int i_format; } ;
struct TYPE_21__ {TYPE_2__ audio; } ;
struct TYPE_23__ {TYPE_1__ fmt_in; TYPE_4__* p_sys; } ;
typedef TYPE_3__ filter_t ;
struct TYPE_24__ {TYPE_5__* p_out_buf; int i_out_offset; } ;
typedef TYPE_4__ filter_sys_t ;
struct TYPE_25__ {int i_buffer; } ;
typedef TYPE_5__ block_t ;


 int Flush (TYPE_3__*) ;
 int assert (int) ;
 int block_Release (TYPE_5__*) ;
 int vlc_assert_unreachable () ;
 int write_buffer_ac3 (TYPE_3__*,TYPE_5__*) ;
 int write_buffer_dts (TYPE_3__*,TYPE_5__*) ;
 int write_buffer_dtshd (TYPE_3__*,TYPE_5__*) ;
 int write_buffer_eac3 (TYPE_3__*,TYPE_5__*) ;
 int write_buffer_truehd (TYPE_3__*,TYPE_5__*) ;

__attribute__((used)) static block_t *DoWork( filter_t *p_filter, block_t *p_in_buf )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    block_t *p_out_buf = ((void*)0);

    int i_ret;
    switch( p_filter->fmt_in.audio.i_format )
    {
        case 133:
            i_ret = write_buffer_ac3( p_filter, p_in_buf );
            break;
        case 130:
            i_ret = write_buffer_eac3( p_filter, p_in_buf );
            break;
        case 129:
        case 128:
            i_ret = write_buffer_truehd( p_filter, p_in_buf );
            break;
        case 131:
            i_ret = write_buffer_dtshd( p_filter, p_in_buf );
            break;
        case 132:
            i_ret = write_buffer_dts( p_filter, p_in_buf );
            break;
        default:
            vlc_assert_unreachable();
    }

    switch( i_ret )
    {
        case 134:
            assert( p_sys->p_out_buf->i_buffer == p_sys->i_out_offset );
            p_out_buf = p_sys->p_out_buf;
            p_sys->p_out_buf = ((void*)0);
            break;
        case 135:
            break;
        case 136:
            Flush( p_filter );
            break;
    }

    block_Release( p_in_buf );
    return p_out_buf;
}
