#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ filter_t ;
struct TYPE_7__ {size_t i_out_offset; TYPE_1__* p_out_buf; } ;
typedef  TYPE_3__ filter_sys_t ;
struct TYPE_5__ {size_t i_buffer; int /*<<< orphan*/ * p_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC2( filter_t *p_filter, size_t i_size )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    FUNC0( p_sys->p_out_buf != NULL );

    FUNC0( p_sys->p_out_buf->i_buffer - p_sys->i_out_offset >= i_size );

    uint8_t *p_out = &p_sys->p_out_buf->p_buffer[p_sys->i_out_offset];
    FUNC1( p_out, 0, i_size );
    p_sys->i_out_offset += i_size;
}