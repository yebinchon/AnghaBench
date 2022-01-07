
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sout_access_out_t ;
struct TYPE_8__ {int s; scalar_t__ p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_9__ {int i_buffer; int p_buffer; } ;
typedef TYPE_2__ block_t ;


 int DUMP_BLOCKSIZE ;
 TYPE_2__* block_Alloc (int ) ;
 int block_Release (TYPE_2__*) ;
 int msg_Err (TYPE_1__*,char*) ;
 size_t sout_AccessOutWrite (int *,TYPE_2__*) ;
 scalar_t__ unlikely (int ) ;
 int vlc_stream_Read (int ,int ,int ) ;

__attribute__((used)) static int Demux( demux_t *p_demux )
{
    sout_access_out_t *out = (void *)p_demux->p_sys;

    block_t *block = block_Alloc( DUMP_BLOCKSIZE );
    if( unlikely(block == ((void*)0)) )
        return -1;

    int rd = vlc_stream_Read( p_demux->s, block->p_buffer, DUMP_BLOCKSIZE );
    if ( rd <= 0 )
    {
        block_Release( block );
        return rd;
    }
    block->i_buffer = rd;

    size_t wr = sout_AccessOutWrite( out, block );
    if( wr != (size_t)rd )
    {
        msg_Err( p_demux, "cannot write data" );
        return -1;
    }
    return 1;
}
