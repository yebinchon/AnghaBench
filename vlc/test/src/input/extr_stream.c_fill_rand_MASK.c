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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 size_t FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC4( int i_fd, size_t i_size )
{
    uint8_t p_buf[4096];
    size_t i_written = 0;
    while( i_written < i_size )
    {
        size_t i_tocopy = FUNC0( i_size - i_written, 4096 );

        FUNC2(p_buf, i_tocopy);
        ssize_t i_ret = FUNC3( i_fd, p_buf, i_tocopy );
        FUNC1( i_ret > 0 );
        i_written += i_ret;
    }
    FUNC1( i_written == i_size );
}