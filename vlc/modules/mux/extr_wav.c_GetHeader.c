
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_8__ {scalar_t__ b_ext; int * waveheader2; int * waveformat; int * waveheader; scalar_t__ i_data; } ;
typedef TYPE_2__ sout_mux_sys_t ;
struct TYPE_9__ {int i_buffer; scalar_t__ p_buffer; } ;
typedef TYPE_3__ block_t ;
typedef int WAVEFORMATEXTENSIBLE ;


 int SetDWLE (int *,scalar_t__) ;
 TYPE_3__* block_Alloc (int) ;
 int memcpy (scalar_t__,int **,int) ;

__attribute__((used)) static block_t *GetHeader( sout_mux_t *p_mux )
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;
    block_t *p_block =
        block_Alloc( sizeof( WAVEFORMATEXTENSIBLE ) + 7 * 4 );

    SetDWLE( &p_sys->waveheader[1],
             20 + (p_sys->b_ext ? 40 : 16) + p_sys->i_data );
    SetDWLE( &p_sys->waveheader2[1], p_sys->i_data );

    memcpy( p_block->p_buffer, &p_sys->waveheader, 5 * 4 );
    memcpy( p_block->p_buffer + 5 * 4, &p_sys->waveformat,
            sizeof( WAVEFORMATEXTENSIBLE ) );
    memcpy( p_block->p_buffer + 5 * 4 +
            (p_sys->b_ext ? sizeof( WAVEFORMATEXTENSIBLE ) : 16),
            &p_sys->waveheader2, 2 * 4 );
    if( !p_sys->b_ext ) p_block->i_buffer -= 24;
    return p_block;
}
