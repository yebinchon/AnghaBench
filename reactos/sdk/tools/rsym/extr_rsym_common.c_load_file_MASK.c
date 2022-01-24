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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 size_t FUNC2 (void*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (size_t) ; 

void*
FUNC7 ( const char* file_name, size_t* file_size )
{
	FILE* f;
	void* FileData = NULL;

	f = FUNC1 ( file_name, "rb" );
	if (f != NULL)
	{
		FUNC4(f, 0L, SEEK_END);
		*file_size = FUNC5(f);
		FUNC4(f, 0L, SEEK_SET);
		FileData = FUNC6(*file_size);
		if (FileData != NULL)
		{
			if ( *file_size != FUNC2(FileData, 1, *file_size, f) )
			{
				FUNC3(FileData);
				FileData = NULL;
			}
		}
		FUNC0(f);
	}
	return FileData;
}