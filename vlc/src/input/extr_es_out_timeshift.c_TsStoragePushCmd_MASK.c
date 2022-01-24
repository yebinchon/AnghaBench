#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int i_file_size; int /*<<< orphan*/  i_cmd_w; TYPE_4__* p_cmd; int /*<<< orphan*/  p_filew; } ;
typedef  TYPE_3__ ts_storage_t ;
struct TYPE_12__ {int /*<<< orphan*/  i_offset; TYPE_5__* p_block; } ;
struct TYPE_13__ {TYPE_1__ send; } ;
struct TYPE_15__ {scalar_t__ i_type; TYPE_2__ u; } ;
typedef  TYPE_4__ ts_cmd_t ;
struct TYPE_16__ {int i_buffer; struct TYPE_16__* p_buffer; } ;
typedef  TYPE_5__ block_t ;

/* Variables and functions */
 scalar_t__ C_SEND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_5__*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6( ts_storage_t *p_storage, const ts_cmd_t *p_cmd, bool b_flush )
{
    ts_cmd_t cmd = *p_cmd;

    FUNC1( !FUNC0( p_storage, p_cmd ) );

    if( cmd.i_type == C_SEND )
    {
        block_t *p_block = cmd.u.send.p_block;

        cmd.u.send.p_block = NULL;
        cmd.u.send.i_offset = FUNC4( p_storage->p_filew );

        if( FUNC5( p_block, sizeof(*p_block), 1, p_storage->p_filew ) != 1 )
        {
            FUNC2( p_block );
            return;
        }
        p_storage->i_file_size += sizeof(*p_block);
        if( p_block->i_buffer > 0 )
        {
            if( FUNC5( p_block->p_buffer, p_block->i_buffer, 1, p_storage->p_filew ) != 1 )
            {
                FUNC2( p_block );
                return;
            }
        }
        p_storage->i_file_size += p_block->i_buffer;
        FUNC2( p_block );

        if( b_flush )
            FUNC3( p_storage->p_filew );
    }
    p_storage->p_cmd[p_storage->i_cmd_w++] = cmd;
}