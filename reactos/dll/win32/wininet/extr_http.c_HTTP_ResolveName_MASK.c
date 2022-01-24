#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int addr_len; int /*<<< orphan*/  addr_str; int /*<<< orphan*/  name; int /*<<< orphan*/  addr; int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ server_t ;
struct TYPE_7__ {int /*<<< orphan*/  dwContext; } ;
struct TYPE_6__ {TYPE_3__ hdr; TYPE_1__* server; TYPE_1__* proxy; } ;
typedef  TYPE_2__ http_request_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  SOCKADDR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INTERNET_NAME_NOT_RESOLVED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTERNET_STATUS_NAME_RESOLVED ; 
 int /*<<< orphan*/  INTERNET_STATUS_RESOLVING_NAME ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC6(http_request_t *request)
{
    server_t *server = request->proxy ? request->proxy : request->server;
    int addr_len;

    if(server->addr_len)
        return ERROR_SUCCESS;

    FUNC1(&request->hdr, request->hdr.dwContext,
                          INTERNET_STATUS_RESOLVING_NAME,
                          server->name,
                          (FUNC5(server->name)+1) * sizeof(WCHAR));

    addr_len = sizeof(server->addr);
    if (!FUNC0(server->name, server->port, (SOCKADDR*)&server->addr, &addr_len, server->addr_str))
        return ERROR_INTERNET_NAME_NOT_RESOLVED;

    server->addr_len = addr_len;
    FUNC1(&request->hdr, request->hdr.dwContext,
                          INTERNET_STATUS_NAME_RESOLVED,
                          server->addr_str, FUNC4(server->addr_str)+1);

    FUNC2("resolved %s to %s\n", FUNC3(server->name), server->addr_str);
    return ERROR_SUCCESS;
}