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
typedef  int /*<<< orphan*/  status ;
typedef  int /*<<< orphan*/ * HINTERNET ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 () ; 
 int HTTP_QUERY_FLAG_NUMBER ; 
 int HTTP_QUERY_STATUS_CODE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int*,int*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTERNET_OPEN_TYPE_DIRECT ; 
 int /*<<< orphan*/  INTERNET_SERVICE_HTTP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

__attribute__((used)) static void FUNC8(int port)
{
    HINTERNET ses, con, req;
    DWORD status, size;
    BOOL ret;

    ses = FUNC6( "winetest", INTERNET_OPEN_TYPE_DIRECT, NULL, NULL, 0 );
    FUNC7( ses != NULL, "InternetOpenA failed\n" );

    con = FUNC5( ses, "localhost", port, "user", "pwd",
                            INTERNET_SERVICE_HTTP, 0, 0 );
    FUNC7( con != NULL, "InternetConnectA failed %u\n", FUNC0() );

    req = FUNC1( con, "HEAD", "/upload.txt", NULL, NULL, NULL, 0, 0 );
    FUNC7( req != NULL, "HttpOpenRequestA failed %u\n", FUNC0() );

    ret = FUNC3( req, NULL, 0, NULL, 0 );
    FUNC7( ret, "HttpSendRequestA failed %u\n", FUNC0() );

    status = 0xdeadbeef;
    size = sizeof(status);
    ret = FUNC2( req, HTTP_QUERY_STATUS_CODE|HTTP_QUERY_FLAG_NUMBER, &status, &size, NULL );
    FUNC7( ret, "HttpQueryInfoA failed %u\n", FUNC0() );
    FUNC7( status == 200, "got %u\n", status );

    FUNC4( req );
    FUNC4( con );
    FUNC4( ses );

    ses = FUNC6( "winetest", INTERNET_OPEN_TYPE_DIRECT, NULL, NULL, 0 );
    FUNC7( ses != NULL, "InternetOpenA failed\n" );

    con = FUNC5( ses, "localhost", port, NULL, NULL,
                            INTERNET_SERVICE_HTTP, 0, 0 );
    FUNC7( con != NULL, "InternetConnectA failed %u\n", FUNC0() );

    req = FUNC1( con, "PUT", "/upload2.txt", NULL, NULL, NULL, 0, 0 );
    FUNC7( req != NULL, "HttpOpenRequestA failed %u\n", FUNC0() );

    ret = FUNC3( req, NULL, 0, NULL, 0 );
    FUNC7( ret, "HttpSendRequestA failed %u\n", FUNC0() );

    status = 0xdeadbeef;
    size = sizeof(status);
    ret = FUNC2( req, HTTP_QUERY_STATUS_CODE|HTTP_QUERY_FLAG_NUMBER, &status, &size, NULL );
    FUNC7( ret, "HttpQueryInfoA failed %u\n", FUNC0() );
    FUNC7( status == 200, "got %u\n", status );

    FUNC4( req );
    FUNC4( con );
    FUNC4( ses );
}