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
 int O_BINARY ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int,int) ; 
 int /*<<< orphan*/  output_buffer ; 
 scalar_t__ output_buffer_pos ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC5( const char *name )
{
    int fd = FUNC3( name, O_WRONLY | O_CREAT | O_TRUNC | O_BINARY, 0666 );
    if (fd == -1) FUNC1( "Error creating %s\n", name );
    if (FUNC4( fd, output_buffer, output_buffer_pos ) != output_buffer_pos)
        FUNC1( "Error writing to %s\n", name );
    FUNC0( fd );
    FUNC2( output_buffer );
}