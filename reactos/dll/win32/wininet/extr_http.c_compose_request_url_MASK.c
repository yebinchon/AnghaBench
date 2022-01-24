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
struct TYPE_4__ {char* canon_host_port; scalar_t__ is_https; } ;

/* Variables and functions */
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static WCHAR *FUNC3(http_request_t *req)
{
    static const WCHAR http[] = { 'h','t','t','p',':','/','/',0 };
    static const WCHAR https[] = { 'h','t','t','p','s',':','/','/',0 };
    const WCHAR *host, *scheme;
    WCHAR *buf, *ptr;
    size_t len;

    host = req->server->canon_host_port;

    if (req->server->is_https)
        scheme = https;
    else
        scheme = http;

    len = FUNC2(scheme) + FUNC2(host) + (req->path[0] != '/' ? 1 : 0) + FUNC2(req->path);
    ptr = buf = FUNC0((len+1) * sizeof(WCHAR));
    if(buf) {
        FUNC1(ptr, scheme);
        ptr += FUNC2(ptr);

        FUNC1(ptr, host);
        ptr += FUNC2(ptr);

        if(req->path[0] != '/')
            *ptr++ = '/';

        FUNC1(ptr, req->path);
        ptr += FUNC2(ptr);
        *ptr = 0;
    }

    return buf;
}