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
typedef  int /*<<< orphan*/  temptext ;
typedef  scalar_t__ LONG ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int _O_CREAT ; 
 int _O_RDWR ; 
 int _O_TRUNC ; 
 int _S_IREAD ; 
 int _S_IWRITE ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int,int) ; 
 char* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 

__attribute__((used)) static void FUNC10( void )
{
    int fd;
    LONG cur, pos, count;
    char temptext[] = "012345678";
    char *tempfile = FUNC5( ".", "tst" );
    
    FUNC9( tempfile != NULL, "Couldn't create test file: %s\n", tempfile );

    fd = FUNC4( tempfile, _O_CREAT|_O_TRUNC|_O_RDWR, _S_IREAD|_S_IWRITE );
    FUNC9( fd > 0, "Couldn't open test file\n" );

    count = FUNC7( fd, temptext, sizeof(temptext) );
    FUNC9( count > 0, "Couldn't write to test file\n" );

    /* get current file pointer */
    cur = FUNC3( fd, 0, SEEK_CUR );

    /* make the file smaller */
    FUNC9( FUNC0( fd, sizeof(temptext) / 2 ) == 0, "_chsize() failed\n" );

    pos = FUNC3( fd, 0, SEEK_CUR );
    FUNC9( cur == pos, "File pointer changed from: %d to: %d\n", cur, pos );
    FUNC9( FUNC2( fd ) == sizeof(temptext) / 2, "Wrong file size\n" );

    /* enlarge the file */
    FUNC9( FUNC0( fd, sizeof(temptext) * 2 ) == 0, "_chsize() failed\n" ); 

    pos = FUNC3( fd, 0, SEEK_CUR );
    FUNC9( cur == pos, "File pointer changed from: %d to: %d\n", cur, pos );
    FUNC9( FUNC2( fd ) == sizeof(temptext) * 2, "Wrong file size\n" );

    FUNC1( fd );
    FUNC6( tempfile );
    FUNC8( tempfile );
}