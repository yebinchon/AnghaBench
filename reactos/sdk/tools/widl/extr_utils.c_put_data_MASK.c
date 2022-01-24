#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t,void const*,size_t) ; 
 size_t output_buffer ; 
 size_t output_buffer_pos ; 

void FUNC2( const void *data, size_t size )
{
    FUNC0( size );
    FUNC1( output_buffer + output_buffer_pos, data, size );
    output_buffer_pos += size;
}