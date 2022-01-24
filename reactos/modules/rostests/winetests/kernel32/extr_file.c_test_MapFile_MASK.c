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
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_FILE_INVALID ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC7(void)
{
    HANDLE handle;
    HANDLE hmap;

    FUNC5(FUNC6(&handle), "Couldn't create test file.\n");

    hmap = FUNC1( handle, NULL, PAGE_READWRITE, 0, 0x1000, "named_file_map" );
    FUNC5( hmap != NULL, "mapping should work, I named it!\n" );

    FUNC5( FUNC0( hmap ), "can't close mapping handle\n");

    /* We have to close file before we try new stuff with mapping again.
       Else we would always succeed on XP or block descriptors on 95. */
    hmap = FUNC1( handle, NULL, PAGE_READWRITE, 0, 0, NULL );
    FUNC5( hmap != NULL, "We should still be able to map!\n" );
    FUNC5( FUNC0( hmap ), "can't close mapping handle\n");
    FUNC5( FUNC0( handle ), "can't close file handle\n");
    handle = NULL;

    FUNC5(FUNC6(&handle), "Couldn't create test file.\n");

    hmap = FUNC1( handle, NULL, PAGE_READWRITE, 0, 0, NULL );
    FUNC5( hmap == NULL, "mapped zero size file\n");
    FUNC5( FUNC3() == ERROR_FILE_INVALID, "not ERROR_FILE_INVALID\n");

    hmap = FUNC1( handle, NULL, PAGE_READWRITE, 0x80000000, 0, NULL );
    FUNC5( hmap == NULL || FUNC4(hmap != NULL) /* NT4 */, "mapping should fail\n");
    /* GetLastError() varies between win9x and WinNT and also depends on the filesystem */
    if ( hmap )
        FUNC0( hmap );

    hmap = FUNC1( handle, NULL, PAGE_READWRITE, 0x80000000, 0x10000, NULL );
    FUNC5( hmap == NULL || FUNC4(hmap != NULL) /* NT4 */, "mapping should fail\n");
    /* GetLastError() varies between win9x and WinNT and also depends on the filesystem */
    if ( hmap )
        FUNC0( hmap );

    /* On XP you can now map again, on Win 95 you cannot. */

    FUNC5( FUNC0( handle ), "can't close file handle\n");
    FUNC5( FUNC2( filename ), "DeleteFile failed after map\n" );
}