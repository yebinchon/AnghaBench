
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_8__ {int fid; int i_seq; scalar_t__ b_asf_http; } ;
typedef TYPE_2__ sout_mux_sys_t ;
typedef int bo_t ;
struct TYPE_9__ {int p_buffer; } ;
typedef TYPE_3__ block_t ;


 int asf_chunk_add (int *,int,int ,int,int ) ;
 int asf_object_index_guid ;
 TYPE_3__* block_Alloc (int) ;
 int bo_add_guid (int *,int *) ;
 int bo_addle_u32 (int *,int) ;
 int bo_addle_u64 (int *,int) ;
 int bo_init (int *,int ,int) ;

__attribute__((used)) static block_t *asf_stream_end_create( sout_mux_t *p_mux )
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;

    block_t *out = ((void*)0);
    bo_t bo;

    if( p_sys->b_asf_http )
    {
        out = block_Alloc( 12 );
        bo_init( &bo, out->p_buffer, 12 );
        asf_chunk_add( &bo, 0x4524, 0, 0x00, p_sys->i_seq++ );
    }
    else
    {

        out = block_Alloc( 56 );
        bo_init( &bo, out->p_buffer, 56 );
        bo_add_guid ( &bo, &asf_object_index_guid );
        bo_addle_u64( &bo, 56 );
        bo_add_guid ( &bo, &p_sys->fid );
        bo_addle_u64( &bo, 10000000 );
        bo_addle_u32( &bo, 5 );
        bo_addle_u32( &bo, 0 );
    }

    return out;
}
