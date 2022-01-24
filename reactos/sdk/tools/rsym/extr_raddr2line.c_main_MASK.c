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
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 size_t FUNC4 (char const*) ; 
 int FUNC5 (char*,size_t) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC6 ( int argc, const char** argv )
{
	char* path;
	size_t offset;
	int res;

	if ( argc != 3 )
	{
		FUNC2(stderr, "Usage: raddr2line <exefile> <offset>\n");
		FUNC1(1);
	}

	path = FUNC0 ( argv[1] );
	offset = FUNC4 ( argv[2] );

	res = FUNC5 ( path, offset );

	FUNC3 ( path );

	return res;
}