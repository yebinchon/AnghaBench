
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int i_file_size; int i_cmd_w; TYPE_4__* p_cmd; int p_filew; } ;
typedef TYPE_3__ ts_storage_t ;
struct TYPE_12__ {int i_offset; TYPE_5__* p_block; } ;
struct TYPE_13__ {TYPE_1__ send; } ;
struct TYPE_15__ {scalar_t__ i_type; TYPE_2__ u; } ;
typedef TYPE_4__ ts_cmd_t ;
struct TYPE_16__ {int i_buffer; struct TYPE_16__* p_buffer; } ;
typedef TYPE_5__ block_t ;


 scalar_t__ C_SEND ;
 int TsStorageIsFull (TYPE_3__*,TYPE_4__ const*) ;
 int assert (int) ;
 int block_Release (TYPE_5__*) ;
 int fflush (int ) ;
 int ftell (int ) ;
 int fwrite (TYPE_5__*,int,int,int ) ;

__attribute__((used)) static void TsStoragePushCmd( ts_storage_t *p_storage, const ts_cmd_t *p_cmd, bool b_flush )
{
    ts_cmd_t cmd = *p_cmd;

    assert( !TsStorageIsFull( p_storage, p_cmd ) );

    if( cmd.i_type == C_SEND )
    {
        block_t *p_block = cmd.u.send.p_block;

        cmd.u.send.p_block = ((void*)0);
        cmd.u.send.i_offset = ftell( p_storage->p_filew );

        if( fwrite( p_block, sizeof(*p_block), 1, p_storage->p_filew ) != 1 )
        {
            block_Release( p_block );
            return;
        }
        p_storage->i_file_size += sizeof(*p_block);
        if( p_block->i_buffer > 0 )
        {
            if( fwrite( p_block->p_buffer, p_block->i_buffer, 1, p_storage->p_filew ) != 1 )
            {
                block_Release( p_block );
                return;
            }
        }
        p_storage->i_file_size += p_block->i_buffer;
        block_Release( p_block );

        if( b_flush )
            fflush( p_storage->p_filew );
    }
    p_storage->p_cmd[p_storage->i_cmd_w++] = cmd;
}
