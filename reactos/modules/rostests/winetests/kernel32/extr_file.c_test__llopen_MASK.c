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
typedef  int UINT ;
typedef  scalar_t__ HFILE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ HFILE_ERROR ; 
 int /*<<< orphan*/  OF_READ ; 
 int /*<<< orphan*/  OF_READWRITE ; 
 int /*<<< orphan*/  OF_WRITE ; 
 scalar_t__ FUNC2 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  sillytext ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9( void )
{
    HFILE filehandle;
    UINT bytes_read;
    char buffer[10000];
    BOOL ret;

    filehandle = FUNC5( filename, 0 );
    if (filehandle == HFILE_ERROR)
    {
        FUNC7(0,"couldn't create file \"%s\" (err=%d)\n",filename,FUNC1());
        return;
    }

    FUNC7( HFILE_ERROR != FUNC3( filehandle, sillytext, FUNC8( sillytext ) ), "_hwrite complains\n" );
    FUNC7( HFILE_ERROR != FUNC4(filehandle), "_lclose complains\n" );

    filehandle = FUNC6( filename, OF_READ );
    FUNC7( HFILE_ERROR == FUNC3( filehandle, sillytext, FUNC8( sillytext ) ), "_hwrite shouldn't be able to write!\n" );
    bytes_read = FUNC2( filehandle, buffer, FUNC8( sillytext ) );
    FUNC7( FUNC8( sillytext )  == bytes_read, "file read size error\n" );
    FUNC7( HFILE_ERROR != FUNC4(filehandle), "_lclose complains\n" );

    filehandle = FUNC6( filename, OF_READWRITE );
    bytes_read = FUNC2( filehandle, buffer, 2 * FUNC8( sillytext ) );
    FUNC7( FUNC8( sillytext )  == bytes_read, "file read size error\n" );
    FUNC7( HFILE_ERROR != FUNC3( filehandle, sillytext, FUNC8( sillytext ) ), "_hwrite should write just fine\n" );
    FUNC7( HFILE_ERROR != FUNC4(filehandle), "_lclose complains\n" );

    filehandle = FUNC6( filename, OF_WRITE );
    FUNC7( HFILE_ERROR == FUNC2( filehandle, buffer, 1 ), "you should only be able to write this file\n" );
    FUNC7( HFILE_ERROR != FUNC3( filehandle, sillytext, FUNC8( sillytext ) ), "_hwrite should write just fine\n" );
    FUNC7( HFILE_ERROR != FUNC4(filehandle), "_lclose complains\n" );

    ret = FUNC0( filename );
    FUNC7( ret, "DeleteFile failed (%d)\n", FUNC1(  ) );
    /* TODO - add tests for the SHARE modes  -  use two processes to pull this one off */
}