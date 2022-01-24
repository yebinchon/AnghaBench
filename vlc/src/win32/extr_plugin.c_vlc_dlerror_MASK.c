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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 int FORMAT_MESSAGE_IGNORE_INSERTS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

char *FUNC6(void)
{
    wchar_t wmsg[256];
    int i = 0, i_error = FUNC2();

    FUNC0( FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS,
                    NULL, i_error, FUNC3 (LANG_NEUTRAL, SUBLANG_DEFAULT),
                    wmsg, 256, NULL );

    /* Go to the end of the string */
    while( !FUNC5( L"\r\n\0", wmsg[i], 3 ) )
        i++;

    FUNC4( wmsg + i, 256 - i, L" (error %i)", i_error );
    return FUNC1( wmsg );
}