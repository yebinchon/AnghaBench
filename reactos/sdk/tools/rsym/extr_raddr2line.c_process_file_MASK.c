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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (char const*,size_t*) ; 
 int FUNC3 (void*,size_t) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC4 ( const char* file_name, size_t offset )
{
	void* FileData;
	size_t FileSize;
	int res = 1;

	FileData = FUNC2 ( file_name, &FileSize );
	if ( !FileData )
	{
		FUNC0 ( stderr, "An error occured loading '%s'\n", file_name );
	}
	else
	{
		res = FUNC3 ( FileData, offset );
		FUNC1 ( FileData );
	}

	return res;
}