
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int status ;
typedef int * HINTERNET ;
typedef int DWORD ;
typedef int BOOL ;


 int GetLastError () ;
 int HTTP_QUERY_FLAG_NUMBER ;
 int HTTP_QUERY_STATUS_CODE ;
 int * HttpOpenRequestA (int *,char*,char*,int *,int *,int *,int ,int ) ;
 int HttpQueryInfoA (int *,int,int*,int*,int *) ;
 int HttpSendRequestA (int *,int *,int ,int *,int ) ;
 int INTERNET_OPEN_TYPE_DIRECT ;
 int INTERNET_SERVICE_HTTP ;
 int InternetCloseHandle (int *) ;
 int * InternetConnectA (int *,char*,int,char*,char*,int ,int ,int ) ;
 int * InternetOpenA (char*,int ,int *,int *,int ) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_basic_auth_credentials_reuse(int port)
{
    HINTERNET ses, con, req;
    DWORD status, size;
    BOOL ret;

    ses = InternetOpenA( "winetest", INTERNET_OPEN_TYPE_DIRECT, ((void*)0), ((void*)0), 0 );
    ok( ses != ((void*)0), "InternetOpenA failed\n" );

    con = InternetConnectA( ses, "localhost", port, "user", "pwd",
                            INTERNET_SERVICE_HTTP, 0, 0 );
    ok( con != ((void*)0), "InternetConnectA failed %u\n", GetLastError() );

    req = HttpOpenRequestA( con, "HEAD", "/upload.txt", ((void*)0), ((void*)0), ((void*)0), 0, 0 );
    ok( req != ((void*)0), "HttpOpenRequestA failed %u\n", GetLastError() );

    ret = HttpSendRequestA( req, ((void*)0), 0, ((void*)0), 0 );
    ok( ret, "HttpSendRequestA failed %u\n", GetLastError() );

    status = 0xdeadbeef;
    size = sizeof(status);
    ret = HttpQueryInfoA( req, HTTP_QUERY_STATUS_CODE|HTTP_QUERY_FLAG_NUMBER, &status, &size, ((void*)0) );
    ok( ret, "HttpQueryInfoA failed %u\n", GetLastError() );
    ok( status == 200, "got %u\n", status );

    InternetCloseHandle( req );
    InternetCloseHandle( con );
    InternetCloseHandle( ses );

    ses = InternetOpenA( "winetest", INTERNET_OPEN_TYPE_DIRECT, ((void*)0), ((void*)0), 0 );
    ok( ses != ((void*)0), "InternetOpenA failed\n" );

    con = InternetConnectA( ses, "localhost", port, ((void*)0), ((void*)0),
                            INTERNET_SERVICE_HTTP, 0, 0 );
    ok( con != ((void*)0), "InternetConnectA failed %u\n", GetLastError() );

    req = HttpOpenRequestA( con, "PUT", "/upload2.txt", ((void*)0), ((void*)0), ((void*)0), 0, 0 );
    ok( req != ((void*)0), "HttpOpenRequestA failed %u\n", GetLastError() );

    ret = HttpSendRequestA( req, ((void*)0), 0, ((void*)0), 0 );
    ok( ret, "HttpSendRequestA failed %u\n", GetLastError() );

    status = 0xdeadbeef;
    size = sizeof(status);
    ret = HttpQueryInfoA( req, HTTP_QUERY_STATUS_CODE|HTTP_QUERY_FLAG_NUMBER, &status, &size, ((void*)0) );
    ok( ret, "HttpQueryInfoA failed %u\n", GetLastError() );
    ok( status == 200, "got %u\n", status );

    InternetCloseHandle( req );
    InternetCloseHandle( con );
    InternetCloseHandle( ses );
}
