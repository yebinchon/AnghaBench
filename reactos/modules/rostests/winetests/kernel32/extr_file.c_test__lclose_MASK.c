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
typedef  scalar_t__ HFILE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ HFILE_ERROR ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  sillytext ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7( void )
{
    HFILE filehandle;
    BOOL ret;

    filehandle = FUNC4( filename, 0 );
    if (filehandle == HFILE_ERROR)
    {
        FUNC5(0,"couldn't create file \"%s\" (err=%d)\n",filename,FUNC1());
        return;
    }

    FUNC5( HFILE_ERROR != FUNC2( filehandle, sillytext, FUNC6( sillytext ) ), "_hwrite complains\n" );

    FUNC5( HFILE_ERROR != FUNC3(filehandle), "_lclose complains\n" );

    ret = FUNC0( filename );
    FUNC5( ret != 0, "DeleteFile failed (%d)\n", FUNC1(  ) );
}