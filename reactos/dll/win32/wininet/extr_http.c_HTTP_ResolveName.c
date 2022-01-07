
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int addr_len; int addr_str; int name; int addr; int port; } ;
typedef TYPE_1__ server_t ;
struct TYPE_7__ {int dwContext; } ;
struct TYPE_6__ {TYPE_3__ hdr; TYPE_1__* server; TYPE_1__* proxy; } ;
typedef TYPE_2__ http_request_t ;
typedef int WCHAR ;
typedef int SOCKADDR ;
typedef int DWORD ;


 int ERROR_INTERNET_NAME_NOT_RESOLVED ;
 int ERROR_SUCCESS ;
 int GetAddress (int ,int ,int *,int*,int ) ;
 int INTERNET_STATUS_NAME_RESOLVED ;
 int INTERNET_STATUS_RESOLVING_NAME ;
 int INTERNET_SendCallback (TYPE_3__*,int ,int ,int ,int) ;
 int TRACE (char*,int ,int ) ;
 int debugstr_w (int ) ;
 int strlen (int ) ;
 int strlenW (int ) ;

__attribute__((used)) static DWORD HTTP_ResolveName(http_request_t *request)
{
    server_t *server = request->proxy ? request->proxy : request->server;
    int addr_len;

    if(server->addr_len)
        return ERROR_SUCCESS;

    INTERNET_SendCallback(&request->hdr, request->hdr.dwContext,
                          INTERNET_STATUS_RESOLVING_NAME,
                          server->name,
                          (strlenW(server->name)+1) * sizeof(WCHAR));

    addr_len = sizeof(server->addr);
    if (!GetAddress(server->name, server->port, (SOCKADDR*)&server->addr, &addr_len, server->addr_str))
        return ERROR_INTERNET_NAME_NOT_RESOLVED;

    server->addr_len = addr_len;
    INTERNET_SendCallback(&request->hdr, request->hdr.dwContext,
                          INTERNET_STATUS_NAME_RESOLVED,
                          server->addr_str, strlen(server->addr_str)+1);

    TRACE("resolved %s to %s\n", debugstr_w(server->name), server->addr_str);
    return ERROR_SUCCESS;
}
