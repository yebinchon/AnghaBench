#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int i_size; void* p_data; scalar_t__ i_data; } ;
typedef  TYPE_1__ var_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int) ; 

int FUNC2( var_buffer_t *p_buf, int i_default_size )
{
    p_buf->i_data = 0;
    if( p_buf->i_size < i_default_size )
    {
        p_buf->i_size = i_default_size;
        FUNC0( p_buf->p_data );
        p_buf->p_data = FUNC1( p_buf->i_size );
    }
    if( !p_buf->p_data )
    {
        p_buf->i_size =  ( i_default_size > 0 ) ? i_default_size : 2048;
        p_buf->p_data = FUNC1( p_buf->i_size );
    }
    return p_buf->p_data ? 0 : -1;
}