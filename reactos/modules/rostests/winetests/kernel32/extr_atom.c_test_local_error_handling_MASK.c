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
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 scalar_t__ unicode_OS ; 

__attribute__((used)) static void FUNC6(void)
{
    char buffer[260];
    WCHAR bufferW[260];
    int i;

    FUNC4( buffer, 'a', 256 );
    buffer[256] = 0;
    FUNC5( !FUNC0(buffer), "add succeeded\n" );
    FUNC5( !FUNC2(buffer), "find succeeded\n" );

    if (unicode_OS)
    {
        for (i = 0; i < 256; i++) bufferW[i] = 'b';
        bufferW[256] = 0;
        FUNC5( !FUNC1(bufferW), "add succeeded\n" );
        FUNC5( !FUNC3(bufferW), "find succeeded\n" );
    }
}