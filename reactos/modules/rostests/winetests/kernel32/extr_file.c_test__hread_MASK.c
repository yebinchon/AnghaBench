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
typedef  scalar_t__ LONG ;
typedef  scalar_t__ HFILE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_BEGIN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ HFILE_ERROR ; 
 int /*<<< orphan*/  OF_READ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filename ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 char* sillytext ; 
 int FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12( void )
{
    HFILE filehandle;
    char buffer[10000];
    LONG bytes_read;
    LONG bytes_wanted;
    LONG i;
    BOOL ret;

    FUNC2(filename,FILE_ATTRIBUTE_NORMAL); /* be sure to remove stale files */
    FUNC0( filename );
    filehandle = FUNC6( filename, 0 );
    if (filehandle == HFILE_ERROR)
    {
        FUNC10(0,"couldn't create file \"%s\" (err=%d)\n",filename,FUNC1());
        return;
    }

    FUNC10( HFILE_ERROR != FUNC4( filehandle, sillytext, FUNC11( sillytext ) ), "_hwrite complains\n" );

    FUNC10( HFILE_ERROR != FUNC5(filehandle), "_lclose complains\n" );

    filehandle = FUNC8( filename, OF_READ );

    FUNC10( HFILE_ERROR != filehandle, "couldn't open file \"%s\" again (err=%d)\n", filename, FUNC1(  ) );

    bytes_read = FUNC3( filehandle, buffer, 2 * FUNC11( sillytext ) );

    FUNC10( FUNC9( sillytext ) == bytes_read, "file read size error\n" );

    for (bytes_wanted = 0; bytes_wanted < FUNC9( sillytext ); bytes_wanted++)
    {
        FUNC10( 0 == FUNC7( filehandle, 0, FILE_BEGIN ), "_llseek complains\n" );
        FUNC10( FUNC3( filehandle, buffer, bytes_wanted ) == bytes_wanted, "erratic _hread return value\n" );
        for (i = 0; i < bytes_wanted; i++)
        {
            FUNC10( buffer[i] == sillytext[i], "that's not what's written\n" );
        }
    }

    FUNC10( HFILE_ERROR != FUNC5( filehandle ), "_lclose complains\n" );

    ret = FUNC0( filename );
    FUNC10( ret != 0, "DeleteFile failed (%d)\n", FUNC1(  ) );
}