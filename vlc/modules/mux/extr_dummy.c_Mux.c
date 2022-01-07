
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int i_nb_inputs; int p_access; TYPE_2__** pp_inputs; TYPE_4__* p_sys; } ;
typedef TYPE_3__ sout_mux_t ;
struct TYPE_14__ {int b_header; } ;
typedef TYPE_4__ sout_mux_sys_t ;
struct TYPE_15__ {int i_flags; int p_buffer; } ;
typedef TYPE_5__ block_t ;
typedef int block_fifo_t ;
struct TYPE_12__ {int * p_fifo; TYPE_1__* p_fmt; } ;
struct TYPE_11__ {scalar_t__ i_extra; int p_extra; } ;


 int BLOCK_FLAG_HEADER ;
 int VLC_SUCCESS ;
 TYPE_5__* block_Alloc (scalar_t__) ;
 int block_FifoCount (int *) ;
 TYPE_5__* block_FifoGet (int *) ;
 int memcpy (int ,int ,scalar_t__) ;
 int msg_Dbg (TYPE_3__*,char*) ;
 int sout_AccessOutWrite (int ,TYPE_5__*) ;

__attribute__((used)) static int Mux( sout_mux_t *p_mux )
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;
    int i;

    for( i = 0; i < p_mux->i_nb_inputs; i++ )
    {
        block_fifo_t *p_fifo;
        int i_count;

        if( p_sys->b_header && p_mux->pp_inputs[i]->p_fmt->i_extra )
        {

            block_t *p_data;
            p_data = block_Alloc( p_mux->pp_inputs[i]->p_fmt->i_extra );

            memcpy( p_data->p_buffer, p_mux->pp_inputs[i]->p_fmt->p_extra,
                    p_mux->pp_inputs[i]->p_fmt->i_extra );

            p_data->i_flags |= BLOCK_FLAG_HEADER;

            msg_Dbg( p_mux, "writing header data" );
            sout_AccessOutWrite( p_mux->p_access, p_data );
        }

        p_fifo = p_mux->pp_inputs[i]->p_fifo;
        i_count = block_FifoCount( p_fifo );
        while( i_count > 0 )
        {
            block_t *p_data = block_FifoGet( p_fifo );

            sout_AccessOutWrite( p_mux->p_access, p_data );

            i_count--;
        }
    }
    p_sys->b_header = 0;

    return VLC_SUCCESS;
}
