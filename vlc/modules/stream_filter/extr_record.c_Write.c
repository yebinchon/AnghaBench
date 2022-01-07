
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_6__ {int b_error; int f; } ;
typedef TYPE_2__ stream_sys_t ;


 int assert (int ) ;
 size_t fwrite (int const*,int,size_t,int ) ;
 int msg_Err (TYPE_1__*,char*) ;

__attribute__((used)) static void Write( stream_t *s, const uint8_t *p_buffer, size_t i_buffer )
{
    stream_sys_t *p_sys = s->p_sys;

    assert( p_sys->f );

    if( i_buffer > 0 )
    {
        const bool b_previous_error = p_sys->b_error;
        const size_t i_written = fwrite( p_buffer, 1, i_buffer, p_sys->f );

        p_sys->b_error = i_written != i_buffer;


        if( p_sys->b_error && !b_previous_error )
            msg_Err( s, "Failed to record data (begin)" );
        else if( !p_sys->b_error && b_previous_error )
            msg_Err( s, "Failed to record data (end)" );
    }
}
