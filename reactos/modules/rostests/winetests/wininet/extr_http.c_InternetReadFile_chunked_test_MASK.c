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
typedef  int HINTERNET ;
typedef  size_t DWORD ;
typedef  char CHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_HTTP_HEADER_NOT_FOUND ; 
 int /*<<< orphan*/  ERROR_INTERNET_NAME_NOT_RESOLVED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HTTP_QUERY_CONTENT_LENGTH ; 
 int /*<<< orphan*/  HTTP_QUERY_CONTENT_TYPE ; 
 int /*<<< orphan*/  HTTP_QUERY_TRANSFER_ENCODING ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,...) ; 
 int FUNC6 (int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int INTERNET_FLAG_KEEP_CONNECTION ; 
 int INTERNET_FLAG_RELOAD ; 
 int /*<<< orphan*/  INTERNET_INVALID_PORT_NUMBER ; 
 int /*<<< orphan*/  INTERNET_OPEN_TYPE_PRECONFIG ; 
 int /*<<< orphan*/  INTERNET_SERVICE_HTTP ; 
 int FUNC7 (int) ; 
 int FUNC8 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,size_t*,int,int) ; 
 int FUNC11 (int,char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 

__attribute__((used)) static void FUNC18(void)
{
    BOOL res;
    CHAR buffer[4000];
    DWORD length, got;
    const char *types[2] = { "*", NULL };
    HINTERNET hi, hic = 0, hor = 0;

    FUNC17("Starting InternetReadFile chunked test\n");

    FUNC17("InternetOpenA <--\n");
    hi = FUNC9("", INTERNET_OPEN_TYPE_PRECONFIG, NULL, NULL, 0);
    FUNC13((hi != 0x0),"InternetOpen failed with error %u\n", FUNC0());
    FUNC17("InternetOpenA -->\n");

    if (hi == 0x0) goto abort;

    FUNC17("InternetConnectA <--\n");
    hic=FUNC8(hi, "test.winehq.org", INTERNET_INVALID_PORT_NUMBER,
                         NULL, NULL, INTERNET_SERVICE_HTTP, 0x0, 0xdeadbeef);
    FUNC13((hic != 0x0),"InternetConnect failed with error %u\n", FUNC0());
    FUNC17("InternetConnectA -->\n");

    if (hic == 0x0) goto abort;

    FUNC17("HttpOpenRequestA <--\n");
    hor = FUNC4(hic, "GET", "/tests/chunked", NULL, NULL, types,
                           INTERNET_FLAG_KEEP_CONNECTION | INTERNET_FLAG_RELOAD,
                           0xdeadbead);
    if (hor == 0x0 && FUNC0() == ERROR_INTERNET_NAME_NOT_RESOLVED) {
        /*
         * If the internet name can't be resolved we are probably behind
         * a firewall or in some other way not directly connected to the
         * Internet. Not enough reason to fail the test. Just ignore and
         * abort.
         */
    } else  {
        FUNC13((hor != 0x0),"HttpOpenRequest failed with error %u\n", FUNC0());
    }
    FUNC17("HttpOpenRequestA -->\n");

    if (hor == 0x0) goto abort;

    FUNC17("HttpSendRequestA -->\n");
    FUNC12(0xdeadbeef);
    res = FUNC6(hor, "", -1, NULL, 0);
    FUNC13(res || (FUNC0() == ERROR_INTERNET_NAME_NOT_RESOLVED),
       "Synchronous HttpSendRequest returning 0, error %u\n", FUNC0());
    FUNC17("HttpSendRequestA <--\n");

    FUNC16(hor, 0);

    length = 100;
    res = FUNC5(hor,HTTP_QUERY_CONTENT_TYPE,buffer,&length,0x0);
    buffer[length]=0;
    FUNC17("Option CONTENT_TYPE -> %i  %s\n",res,buffer);

    FUNC12( 0xdeadbeef );
    length = 100;
    res = FUNC5(hor,HTTP_QUERY_TRANSFER_ENCODING,buffer,&length,0x0);
    buffer[length]=0;
    FUNC17("Option TRANSFER_ENCODING -> %i  %s\n",res,buffer);
    FUNC13( res || ( FUNC14() && FUNC0() == ERROR_HTTP_HEADER_NOT_FOUND ),
        "Failed to get TRANSFER_ENCODING option, error %u\n", FUNC0() );
    FUNC13( !FUNC15( buffer, "chunked" ) || ( ! res && FUNC14() && FUNC0() == ERROR_HTTP_HEADER_NOT_FOUND ),
        "Wrong transfer encoding '%s'\n", buffer );

    FUNC12( 0xdeadbeef );
    length = 16;
    res = FUNC5(hor,HTTP_QUERY_CONTENT_LENGTH,&buffer,&length,0x0);
    FUNC13( !res, "Found CONTENT_LENGTH option '%s'\n", buffer );
    FUNC13( FUNC0() == ERROR_HTTP_HEADER_NOT_FOUND, "Wrong error %u\n", FUNC0() );

    length = 100;
    FUNC17("Entering Query loop\n");

    while (TRUE)
    {
        res = FUNC10(hor,&length,0x0,0x0);
        FUNC13(!(!res && length != 0),"InternetQueryDataAvailable failed with non-zero length\n");
        FUNC13(res, "InternetQueryDataAvailable failed, error %d\n", FUNC0());
        FUNC17("got %u available\n",length);
        if (length)
        {
            char *buffer = FUNC2(FUNC1(),0,length+1);

            res = FUNC11(hor,buffer,length,&got);

            buffer[got]=0;
            FUNC17("ReadFile -> %i %i\n",res,got);
            FUNC13( length == got, "only got %u of %u available\n", got, length );
            FUNC13( buffer[got-1] == '\n', "received partial line '%s'\n", buffer );

            FUNC3(FUNC1(),0,buffer);
            if (!got) break;
        }
        if (length == 0)
        {
            got = 0xdeadbeef;
            res = FUNC11( hor, buffer, 1, &got );
            FUNC13( res, "InternetReadFile failed: %u\n", FUNC0() );
            FUNC13( !got, "got %u\n", got );
            break;
        }
    }
abort:
    FUNC17("aborting\n");
    if (hor != 0x0) {
        res = FUNC7(hor);
        FUNC13 (res, "InternetCloseHandle of handle opened by HttpOpenRequestA failed\n");
    }
    if (hi != 0x0) {
        res = FUNC7(hi);
        FUNC13 (res, "InternetCloseHandle of handle opened by InternetOpenA failed\n");
    }
}