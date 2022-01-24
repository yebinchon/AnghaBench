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
struct test_request {int dummy; } ;
struct info {int /*<<< orphan*/  wait; } ;
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (struct test_request*,struct info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct test_request*,struct info*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,struct test_request*,struct info*) ; 
 int /*<<< orphan*/  FUNC6 (struct test_request*,struct info*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct test_request*,struct info*,char*) ; 
 int /*<<< orphan*/  server_socket_done ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(int port)
{
    struct test_request req;
    struct info info;

    static const WCHAR testW[] = {'/','t','e','s','t',0};

    FUNC9("Testing persistent connection...\n");

    info.wait = FUNC1( NULL, FALSE, FALSE, NULL );

    FUNC5( port, &req, &info );
    FUNC8( &req, &info,
                       "HTTP/1.1 200 OK\r\n"
                       "Server: winetest\r\n"
                       "Connection: keep-alive\r\n"
                       "Content-Length: 1\r\n"
                       "\r\n"
                       "X" );
    FUNC6( &req, &info, "X", FALSE );
    FUNC3( &req, &info, FALSE );

    /* chunked connection test */
    FUNC4( port, &req, &info, testW, TRUE );
    FUNC7( "GET /test HTTP/1.1\r\n" );
    FUNC8( &req, &info,
                       "HTTP/1.1 200 OK\r\n"
                       "Server: winetest\r\n"
                       "Transfer-Encoding: chunked\r\n"
                       "Connection: keep-alive\r\n"
                       "\r\n"
                       "9\r\n123456789\r\n"
                       "0\r\n\r\n" );
    FUNC6( &req, &info, "123456789", FALSE );
    FUNC3( &req, &info, FALSE );

    /* HTTP/1.1 connections are persistent by default, no additional header is needed */
    FUNC4( port, &req, &info, testW, TRUE );
    FUNC7( "GET /test HTTP/1.1\r\n" );
    FUNC8( &req, &info,
                       "HTTP/1.1 200 OK\r\n"
                       "Server: winetest\r\n"
                       "Content-Length: 2\r\n"
                       "\r\n"
                       "xx" );
    FUNC6( &req, &info, "xx", FALSE );
    FUNC3( &req, &info, FALSE );

    FUNC4( port, &req, &info, testW, TRUE );
    FUNC7( "GET /test HTTP/1.1\r\n" );
    FUNC8( &req, &info,
                       "HTTP/1.1 200 OK\r\n"
                       "Server: winetest\r\n"
                       "Content-Length: 2\r\n"
                       "Connection: close\r\n"
                       "\r\n"
                       "yy" );
    FUNC3( &req, &info, TRUE );

    FUNC2( server_socket_done );
    FUNC0( info.wait );
}