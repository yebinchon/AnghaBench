#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ stream_t ;
struct TYPE_8__ {size_t i_size; int /*<<< orphan*/  p_list; } ;
struct TYPE_10__ {TYPE_1__ remain; } ;
typedef  TYPE_3__ stream_sys_t ;
struct TYPE_11__ {size_t i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_4__ block_t ;

/* Variables and functions */
 TYPE_4__* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static bool FUNC3( stream_t *p_stream, const uint8_t *p_data, size_t i_size )
{
    stream_sys_t *p_sys = p_stream->p_sys;
    if ( i_size == 0 )
        return true;
    block_t *p_block = FUNC0( i_size );
    if ( !p_block )
        return false;
    FUNC2( p_block->p_buffer, p_data, i_size );
    p_block->i_buffer = i_size;
    FUNC1( & p_sys->remain.p_list, p_block );
    p_sys->remain.i_size += i_size;
    return true;
}