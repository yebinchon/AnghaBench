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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char const*,scalar_t__*,char*) ; 
 scalar_t__ ERROR_BUFFER_OVERFLOW ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

__attribute__((used)) static void FUNC5(void)
{
    static const WCHAR classW[] = {'c','l','a','s','s',0};
    static const WCHAR hostW[] = {'h','o','s','t','.','d','o','m','a','i','n',0};
    static const WCHAR resultW[] = {'c','l','a','s','s','/','h','o','s','t','.','d','o','m','a','i','n',0};
    DWORD ret, len;
    WCHAR buf[256];

    ret = FUNC1( NULL, NULL, NULL, NULL );
    FUNC4( ret == ERROR_INVALID_PARAMETER, "got %u\n", ret );

    ret = FUNC1( classW, NULL, NULL, NULL );
    FUNC4( ret == ERROR_INVALID_PARAMETER, "got %u\n", ret );

    ret = FUNC1( classW, hostW, NULL, NULL );
    FUNC4( ret == ERROR_INVALID_PARAMETER, "got %u\n", ret );

    len = 0;
    ret = FUNC1( classW, hostW, &len, NULL );
    FUNC4( ret == ERROR_BUFFER_OVERFLOW, "got %u\n", ret );
    FUNC4( len == FUNC3(resultW) + 1, "got %u\n", len );

    len = FUNC0(buf);
    buf[0] = 0;
    ret = FUNC1( classW, hostW, &len, buf );
    FUNC4( ret == ERROR_SUCCESS, "got %u\n", ret );
    FUNC4( len == FUNC3(resultW) + 1, "got %u\n", len );
    FUNC4( !FUNC2( buf, resultW ), "wrong data\n" );
}