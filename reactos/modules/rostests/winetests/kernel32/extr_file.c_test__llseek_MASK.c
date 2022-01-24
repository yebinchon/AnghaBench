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
typedef  int LONG ;
typedef  int INT ;
typedef  scalar_t__ HFILE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_BEGIN ; 
 int /*<<< orphan*/  FILE_CURRENT ; 
 int /*<<< orphan*/  FILE_END ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ HFILE_ERROR ; 
 int FUNC2 (scalar_t__,char*,int) ; 
 int FUNC3 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 char* sillytext ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9( void )
{
    INT i;
    HFILE filehandle;
    char buffer[1];
    LONG bytes_read;
    BOOL ret;

    filehandle = FUNC5( filename, 0 );
    if (filehandle == HFILE_ERROR)
    {
        FUNC7(0,"couldn't create file \"%s\" (err=%d)\n",filename,FUNC1());
        return;
    }

    for (i = 0; i < 400; i++)
    {
        FUNC7( FUNC3( filehandle, sillytext, FUNC8( sillytext ) ) != -1, "_hwrite complains\n" );
    }
    FUNC7( FUNC6( filehandle, 400 * FUNC8( sillytext ), FILE_CURRENT ) != -1, "should be able to seek\n" );
    FUNC7( FUNC6( filehandle, 27 + 35 * FUNC8( sillytext ), FILE_BEGIN ) != -1, "should be able to seek\n" );

    bytes_read = FUNC2( filehandle, buffer, 1);
    FUNC7( 1 == bytes_read, "file read size error\n" );
    FUNC7( buffer[0] == sillytext[27], "_llseek error, it got lost seeking\n" );
    FUNC7( FUNC6( filehandle, -400 * (LONG)FUNC8( sillytext ), FILE_END ) != -1, "should be able to seek\n" );

    bytes_read = FUNC2( filehandle, buffer, 1);
    FUNC7( 1 == bytes_read, "file read size error\n" );
    FUNC7( buffer[0] == sillytext[0], "_llseek error, it got lost seeking\n" );
    FUNC7( FUNC6( filehandle, 1000000, FILE_END ) != -1, "should be able to seek past file; poor, poor Windows programmers\n" );
    FUNC7( HFILE_ERROR != FUNC4(filehandle), "_lclose complains\n" );

    ret = FUNC0( filename );
    FUNC7( ret, "DeleteFile failed (%d)\n", FUNC1(  ) );
}