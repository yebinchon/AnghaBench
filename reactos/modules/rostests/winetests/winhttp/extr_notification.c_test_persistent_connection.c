
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_request {int dummy; } ;
struct info {int wait; } ;
typedef char WCHAR ;


 int CloseHandle (int ) ;
 int CreateEventW (int *,int ,int ,int *) ;
 int FALSE ;
 int SetEvent (int ) ;
 int TRUE ;
 int close_request (struct test_request*,struct info*,int ) ;
 int open_async_request (int,struct test_request*,struct info*,char const*,int ) ;
 int open_socket_request (int,struct test_request*,struct info*) ;
 int read_request_data (struct test_request*,struct info*,char*,int ) ;
 int server_read_data (char*) ;
 int server_send_reply (struct test_request*,struct info*,char*) ;
 int server_socket_done ;
 int trace (char*) ;

__attribute__((used)) static void test_persistent_connection(int port)
{
    struct test_request req;
    struct info info;

    static const WCHAR testW[] = {'/','t','e','s','t',0};

    trace("Testing persistent connection...\n");

    info.wait = CreateEventW( ((void*)0), FALSE, FALSE, ((void*)0) );

    open_socket_request( port, &req, &info );
    server_send_reply( &req, &info,
                       "HTTP/1.1 200 OK\r\n"
                       "Server: winetest\r\n"
                       "Connection: keep-alive\r\n"
                       "Content-Length: 1\r\n"
                       "\r\n"
                       "X" );
    read_request_data( &req, &info, "X", FALSE );
    close_request( &req, &info, FALSE );


    open_async_request( port, &req, &info, testW, TRUE );
    server_read_data( "GET /test HTTP/1.1\r\n" );
    server_send_reply( &req, &info,
                       "HTTP/1.1 200 OK\r\n"
                       "Server: winetest\r\n"
                       "Transfer-Encoding: chunked\r\n"
                       "Connection: keep-alive\r\n"
                       "\r\n"
                       "9\r\n123456789\r\n"
                       "0\r\n\r\n" );
    read_request_data( &req, &info, "123456789", FALSE );
    close_request( &req, &info, FALSE );


    open_async_request( port, &req, &info, testW, TRUE );
    server_read_data( "GET /test HTTP/1.1\r\n" );
    server_send_reply( &req, &info,
                       "HTTP/1.1 200 OK\r\n"
                       "Server: winetest\r\n"
                       "Content-Length: 2\r\n"
                       "\r\n"
                       "xx" );
    read_request_data( &req, &info, "xx", FALSE );
    close_request( &req, &info, FALSE );

    open_async_request( port, &req, &info, testW, TRUE );
    server_read_data( "GET /test HTTP/1.1\r\n" );
    server_send_reply( &req, &info,
                       "HTTP/1.1 200 OK\r\n"
                       "Server: winetest\r\n"
                       "Content-Length: 2\r\n"
                       "Connection: close\r\n"
                       "\r\n"
                       "yy" );
    close_request( &req, &info, TRUE );

    SetEvent( server_socket_done );
    CloseHandle( info.wait );
}
