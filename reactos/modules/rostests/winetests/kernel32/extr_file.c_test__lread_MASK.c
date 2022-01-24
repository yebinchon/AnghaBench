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
typedef  scalar_t__ UINT ;
typedef  scalar_t__ HFILE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_BEGIN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ HFILE_ERROR ; 
 int /*<<< orphan*/  OF_READ ; 
 scalar_t__ FUNC2 (scalar_t__,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,char*,scalar_t__) ; 
 int /*<<< orphan*/  filename ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 char* sillytext ; 
 scalar_t__ FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11( void )
{
    HFILE filehandle;
    char buffer[10000];
    UINT bytes_read;
    UINT bytes_wanted;
    UINT i;
    BOOL ret;

    filehandle = FUNC4( filename, 0 );
    if (filehandle == HFILE_ERROR)
    {
        FUNC9(0,"couldn't create file \"%s\" (err=%d)\n",filename,FUNC1());
        return;
    }

    FUNC9( HFILE_ERROR != FUNC2( filehandle, sillytext, FUNC10( sillytext ) ), "_hwrite complains\n" );

    FUNC9( HFILE_ERROR != FUNC3(filehandle), "_lclose complains\n" );

    filehandle = FUNC6( filename, OF_READ );

    FUNC9( HFILE_ERROR != filehandle, "couldn't open file \"%s\" again (err=%d)\n", filename, FUNC1());

    bytes_read = FUNC7( filehandle, buffer, 2 * FUNC10( sillytext ) );

    FUNC9( FUNC8( sillytext ) == bytes_read, "file read size error\n" );

    for (bytes_wanted = 0; bytes_wanted < FUNC10( sillytext ); bytes_wanted++)
    {
        FUNC9( 0 == FUNC5( filehandle, 0, FILE_BEGIN ), "_llseek complains\n" );
        FUNC9( FUNC7( filehandle, buffer, bytes_wanted ) == bytes_wanted, "erratic _hread return value\n" );
        for (i = 0; i < bytes_wanted; i++)
        {
            FUNC9( buffer[i] == sillytext[i], "that's not what's written\n" );
        }
    }

    FUNC9( HFILE_ERROR != FUNC3(filehandle), "_lclose complains\n" );

    ret = FUNC0( filename );
    FUNC9( ret, "DeleteFile failed (%d)\n", FUNC1(  ) );
}