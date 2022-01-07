
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HINTERNET ;
typedef size_t DWORD ;
typedef char CHAR ;
typedef int BOOL ;


 int ERROR_HTTP_HEADER_NOT_FOUND ;
 int ERROR_INTERNET_NAME_NOT_RESOLVED ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int HTTP_QUERY_CONTENT_LENGTH ;
 int HTTP_QUERY_CONTENT_TYPE ;
 int HTTP_QUERY_TRANSFER_ENCODING ;
 char* HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,char*) ;
 int HttpOpenRequestA (int,char*,char*,int *,int *,char const**,int,int) ;
 int HttpQueryInfoA (int,int ,...) ;
 int HttpSendRequestA (int,char*,int,int *,int ) ;
 int INTERNET_FLAG_KEEP_CONNECTION ;
 int INTERNET_FLAG_RELOAD ;
 int INTERNET_INVALID_PORT_NUMBER ;
 int INTERNET_OPEN_TYPE_PRECONFIG ;
 int INTERNET_SERVICE_HTTP ;
 int InternetCloseHandle (int) ;
 int InternetConnectA (int,char*,int ,int *,int *,int ,int,int) ;
 int InternetOpenA (char*,int ,int *,int *,int ) ;
 int InternetQueryDataAvailable (int,size_t*,int,int) ;
 int InternetReadFile (int,char*,int,size_t*) ;
 int SetLastError (int) ;
 scalar_t__ TRUE ;
 int ok (int,char*,...) ;
 scalar_t__ proxy_active () ;
 int strcmp (char*,char*) ;
 int test_request_flags (int,int ) ;
 int trace (char*,...) ;

__attribute__((used)) static void InternetReadFile_chunked_test(void)
{
    BOOL res;
    CHAR buffer[4000];
    DWORD length, got;
    const char *types[2] = { "*", ((void*)0) };
    HINTERNET hi, hic = 0, hor = 0;

    trace("Starting InternetReadFile chunked test\n");

    trace("InternetOpenA <--\n");
    hi = InternetOpenA("", INTERNET_OPEN_TYPE_PRECONFIG, ((void*)0), ((void*)0), 0);
    ok((hi != 0x0),"InternetOpen failed with error %u\n", GetLastError());
    trace("InternetOpenA -->\n");

    if (hi == 0x0) goto abort;

    trace("InternetConnectA <--\n");
    hic=InternetConnectA(hi, "test.winehq.org", INTERNET_INVALID_PORT_NUMBER,
                         ((void*)0), ((void*)0), INTERNET_SERVICE_HTTP, 0x0, 0xdeadbeef);
    ok((hic != 0x0),"InternetConnect failed with error %u\n", GetLastError());
    trace("InternetConnectA -->\n");

    if (hic == 0x0) goto abort;

    trace("HttpOpenRequestA <--\n");
    hor = HttpOpenRequestA(hic, "GET", "/tests/chunked", ((void*)0), ((void*)0), types,
                           INTERNET_FLAG_KEEP_CONNECTION | INTERNET_FLAG_RELOAD,
                           0xdeadbead);
    if (hor == 0x0 && GetLastError() == ERROR_INTERNET_NAME_NOT_RESOLVED) {






    } else {
        ok((hor != 0x0),"HttpOpenRequest failed with error %u\n", GetLastError());
    }
    trace("HttpOpenRequestA -->\n");

    if (hor == 0x0) goto abort;

    trace("HttpSendRequestA -->\n");
    SetLastError(0xdeadbeef);
    res = HttpSendRequestA(hor, "", -1, ((void*)0), 0);
    ok(res || (GetLastError() == ERROR_INTERNET_NAME_NOT_RESOLVED),
       "Synchronous HttpSendRequest returning 0, error %u\n", GetLastError());
    trace("HttpSendRequestA <--\n");

    test_request_flags(hor, 0);

    length = 100;
    res = HttpQueryInfoA(hor,HTTP_QUERY_CONTENT_TYPE,buffer,&length,0x0);
    buffer[length]=0;
    trace("Option CONTENT_TYPE -> %i  %s\n",res,buffer);

    SetLastError( 0xdeadbeef );
    length = 100;
    res = HttpQueryInfoA(hor,HTTP_QUERY_TRANSFER_ENCODING,buffer,&length,0x0);
    buffer[length]=0;
    trace("Option TRANSFER_ENCODING -> %i  %s\n",res,buffer);
    ok( res || ( proxy_active() && GetLastError() == ERROR_HTTP_HEADER_NOT_FOUND ),
        "Failed to get TRANSFER_ENCODING option, error %u\n", GetLastError() );
    ok( !strcmp( buffer, "chunked" ) || ( ! res && proxy_active() && GetLastError() == ERROR_HTTP_HEADER_NOT_FOUND ),
        "Wrong transfer encoding '%s'\n", buffer );

    SetLastError( 0xdeadbeef );
    length = 16;
    res = HttpQueryInfoA(hor,HTTP_QUERY_CONTENT_LENGTH,&buffer,&length,0x0);
    ok( !res, "Found CONTENT_LENGTH option '%s'\n", buffer );
    ok( GetLastError() == ERROR_HTTP_HEADER_NOT_FOUND, "Wrong error %u\n", GetLastError() );

    length = 100;
    trace("Entering Query loop\n");

    while (TRUE)
    {
        res = InternetQueryDataAvailable(hor,&length,0x0,0x0);
        ok(!(!res && length != 0),"InternetQueryDataAvailable failed with non-zero length\n");
        ok(res, "InternetQueryDataAvailable failed, error %d\n", GetLastError());
        trace("got %u available\n",length);
        if (length)
        {
            char *buffer = HeapAlloc(GetProcessHeap(),0,length+1);

            res = InternetReadFile(hor,buffer,length,&got);

            buffer[got]=0;
            trace("ReadFile -> %i %i\n",res,got);
            ok( length == got, "only got %u of %u available\n", got, length );
            ok( buffer[got-1] == '\n', "received partial line '%s'\n", buffer );

            HeapFree(GetProcessHeap(),0,buffer);
            if (!got) break;
        }
        if (length == 0)
        {
            got = 0xdeadbeef;
            res = InternetReadFile( hor, buffer, 1, &got );
            ok( res, "InternetReadFile failed: %u\n", GetLastError() );
            ok( !got, "got %u\n", got );
            break;
        }
    }
abort:
    trace("aborting\n");
    if (hor != 0x0) {
        res = InternetCloseHandle(hor);
        ok (res, "InternetCloseHandle of handle opened by HttpOpenRequestA failed\n");
    }
    if (hi != 0x0) {
        res = InternetCloseHandle(hi);
        ok (res, "InternetCloseHandle of handle opened by InternetOpenA failed\n");
    }
}
