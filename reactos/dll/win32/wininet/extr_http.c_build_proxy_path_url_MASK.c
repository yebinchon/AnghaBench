#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* path; TYPE_1__* server; } ;
typedef  TYPE_2__ http_request_t ;
typedef  char WCHAR ;
struct TYPE_4__ {char* scheme_host_port; } ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static WCHAR *FUNC6(http_request_t *req)
{
    DWORD size, len;
    WCHAR *url;

    len = FUNC5(req->server->scheme_host_port);
    size = len + FUNC5(req->path) + 1;
    if(*req->path != '/')
        size++;
    url = FUNC2(size * sizeof(WCHAR));
    if(!url)
        return NULL;

    FUNC3(url, req->server->scheme_host_port, len*sizeof(WCHAR));
    if(*req->path != '/')
        url[len++] = '/';

    FUNC4(url+len, req->path);

    FUNC0("url=%s\n", FUNC1(url));
    return url;
}