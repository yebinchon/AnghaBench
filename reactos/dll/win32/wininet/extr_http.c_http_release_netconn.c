
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int dwContext; } ;
struct TYPE_10__ {TYPE_8__ hdr; TYPE_3__* netconn; } ;
typedef TYPE_2__ http_request_t ;
typedef int WCHAR ;
struct TYPE_11__ {scalar_t__ keep_until; int pool_entry; TYPE_1__* server; scalar_t__ keep_alive; } ;
struct TYPE_9__ {int conn_pool; } ;
typedef scalar_t__ HMODULE ;
typedef int * HANDLE ;
typedef scalar_t__ DWORD64 ;
typedef int BOOL ;


 scalar_t__ COLLECT_TIME ;
 int CloseHandle (int *) ;
 int * CreateThread (int *,int ,int ,int *,int ,int *) ;
 int EnterCriticalSection (int *) ;
 scalar_t__ FALSE ;
 int FreeLibrary (scalar_t__) ;
 int GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS ;
 int GetModuleHandleExW (int ,int const*,scalar_t__*) ;
 scalar_t__ GetTickCount () ;
 int INTERNET_STATUS_CLOSING_CONNECTION ;
 int INTERNET_STATUS_CONNECTION_CLOSED ;
 int INTERNET_SendCallback (TYPE_8__*,int ,int ,int ,int ) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,TYPE_2__*,TYPE_3__*,int) ;
 scalar_t__ TRUE ;
 scalar_t__ WININET_hModule ;
 int close_netconn (TYPE_3__*) ;
 int collect_connections_proc ;
 scalar_t__ collector_running ;
 int connection_pool_cs ;
 int is_valid_netconn (TYPE_3__*) ;
 int list_add_head (int *,int *) ;

__attribute__((used)) static void http_release_netconn(http_request_t *req, BOOL reuse)
{
    TRACE("%p %p %x\n",req, req->netconn, reuse);

    if(!is_valid_netconn(req->netconn))
        return;


    if(reuse && req->netconn->keep_alive) {
        BOOL run_collector;

        EnterCriticalSection(&connection_pool_cs);

        list_add_head(&req->netconn->server->conn_pool, &req->netconn->pool_entry);
        req->netconn->keep_until = (DWORD64)GetTickCount() + COLLECT_TIME;
        req->netconn = ((void*)0);

        run_collector = !collector_running;
        collector_running = TRUE;

        LeaveCriticalSection(&connection_pool_cs);

        if(run_collector) {
            HANDLE thread = ((void*)0);
            HMODULE module;

            GetModuleHandleExW(GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS, (const WCHAR*)WININET_hModule, &module);
            if(module)
                thread = CreateThread(((void*)0), 0, collect_connections_proc, ((void*)0), 0, ((void*)0));
            if(!thread) {
                EnterCriticalSection(&connection_pool_cs);
                collector_running = FALSE;
                LeaveCriticalSection(&connection_pool_cs);

                if(module)
                    FreeLibrary(module);
            }
            else
                CloseHandle(thread);
        }
        return;
    }





    INTERNET_SendCallback(&req->hdr, req->hdr.dwContext,
                          INTERNET_STATUS_CLOSING_CONNECTION, 0, 0);

    close_netconn(req->netconn);

    INTERNET_SendCallback(&req->hdr, req->hdr.dwContext,
                          INTERNET_STATUS_CONNECTION_CLOSED, 0, 0);
}
