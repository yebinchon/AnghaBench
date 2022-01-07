
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_14__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ sout_mux_t ;
struct TYPE_13__ {int i_entry_count; TYPE_1__* entry; } ;
struct TYPE_15__ {TYPE_2__ idx1; } ;
typedef TYPE_4__ sout_mux_sys_t ;
struct TYPE_16__ {TYPE_6__* b; } ;
typedef TYPE_5__ bo_t ;
struct TYPE_17__ {int p_buffer; } ;
typedef TYPE_6__ block_t ;
struct TYPE_12__ {char* fcc; int i_flags; int i_pos; int i_length; } ;


 int bo_add_32le (TYPE_5__*,int) ;
 int bo_add_fourcc (TYPE_5__*,char*) ;
 int bo_init (TYPE_5__*,int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static block_t * avi_HeaderCreateidx1( sout_mux_t *p_mux )
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;
    uint32_t i_idx1_size;
    bo_t bo;

    i_idx1_size = 16 * p_sys->idx1.i_entry_count + 8;

    if (!i_idx1_size || !bo_init( &bo, i_idx1_size ) )
        return ((void*)0);
    memset( bo.b->p_buffer, 0, i_idx1_size);

    bo_add_fourcc( &bo, "idx1" );
    bo_add_32le( &bo, i_idx1_size - 8);

    for( unsigned i = 0; i < p_sys->idx1.i_entry_count; i++ )
    {
        bo_add_fourcc( &bo, p_sys->idx1.entry[i].fcc );
        bo_add_32le( &bo, p_sys->idx1.entry[i].i_flags );
        bo_add_32le( &bo, p_sys->idx1.entry[i].i_pos );
        bo_add_32le( &bo, p_sys->idx1.entry[i].i_length );
    }

    return( bo.b );
}
