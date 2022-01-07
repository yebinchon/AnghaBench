
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_request {int dummy; } ;
struct info {int dummy; } ;
typedef char WCHAR ;


 int FALSE ;
 int INFINITE ;
 int ResetEvent (int ) ;
 int WaitForSingleObject (int ,int ) ;
 int open_async_request (int,struct test_request*,struct info*,char const*,int ) ;
 int server_socket_available ;
 int server_socket_done ;

__attribute__((used)) static void open_socket_request(int port, struct test_request *req, struct info *info)
{
    static const WCHAR socketW[] = {'/','s','o','c','k','e','t',0};

    ResetEvent( server_socket_done );
    open_async_request( port, req, info, socketW, FALSE );
    WaitForSingleObject( server_socket_available, INFINITE );
}
