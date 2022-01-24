#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  object_header_t ;
struct TYPE_7__ {int security_flags; int connect_timeout; int send_timeout; int receive_timeout; TYPE_2__* session; TYPE_4__* netconn; } ;
typedef  TYPE_3__ http_request_t ;
struct TYPE_8__ {int security_flags; } ;
struct TYPE_6__ {TYPE_1__* appInfo; void* password; void* userName; } ;
struct TYPE_5__ {void* proxyPassword; void* proxyUsername; } ;
typedef  int DWORD ;

/* Variables and functions */
 int ERROR_INTERNET_OPTION_NOT_SETTABLE ; 
 int ERROR_INVALID_PARAMETER ; 
 int ERROR_OUTOFMEMORY ; 
 int ERROR_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ *,int,void*,int) ; 
#define  INTERNET_OPTION_CONNECT_TIMEOUT 135 
#define  INTERNET_OPTION_PASSWORD 134 
#define  INTERNET_OPTION_PROXY_PASSWORD 133 
#define  INTERNET_OPTION_PROXY_USERNAME 132 
#define  INTERNET_OPTION_RECEIVE_TIMEOUT 131 
#define  INTERNET_OPTION_SECURITY_FLAGS 130 
#define  INTERNET_OPTION_SEND_TIMEOUT 129 
#define  INTERNET_OPTION_USERNAME 128 
 int SECURITY_SET_MASK ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 

__attribute__((used)) static DWORD FUNC5(object_header_t *hdr, DWORD option, void *buffer, DWORD size)
{
    http_request_t *req = (http_request_t*)hdr;

    switch(option) {
    case 99: /* Undocumented, seems to be INTERNET_OPTION_SECURITY_FLAGS with argument validation */
        FUNC1("Undocumented option 99\n");

        if (!buffer || size != sizeof(DWORD))
            return ERROR_INVALID_PARAMETER;
        if(*(DWORD*)buffer & ~SECURITY_SET_MASK)
            return ERROR_INTERNET_OPTION_NOT_SETTABLE;

        /* fall through */
    case INTERNET_OPTION_SECURITY_FLAGS:
    {
        DWORD flags;

        if (!buffer || size != sizeof(DWORD))
            return ERROR_INVALID_PARAMETER;
        flags = *(DWORD *)buffer;
        FUNC1("INTERNET_OPTION_SECURITY_FLAGS %08x\n", flags);
        flags &= SECURITY_SET_MASK;
        req->security_flags |= flags;
        if(FUNC4(req->netconn))
            req->netconn->security_flags |= flags;
        return ERROR_SUCCESS;
    }
    case INTERNET_OPTION_CONNECT_TIMEOUT:
        if (!buffer || size != sizeof(DWORD)) return ERROR_INVALID_PARAMETER;
        req->connect_timeout = *(DWORD *)buffer;
        return ERROR_SUCCESS;

    case INTERNET_OPTION_SEND_TIMEOUT:
        if (!buffer || size != sizeof(DWORD)) return ERROR_INVALID_PARAMETER;
        req->send_timeout = *(DWORD *)buffer;
        return ERROR_SUCCESS;

    case INTERNET_OPTION_RECEIVE_TIMEOUT:
        if (!buffer || size != sizeof(DWORD)) return ERROR_INVALID_PARAMETER;
        req->receive_timeout = *(DWORD *)buffer;
        return ERROR_SUCCESS;

    case INTERNET_OPTION_USERNAME:
        FUNC2(req->session->userName);
        if (!(req->session->userName = FUNC3(buffer))) return ERROR_OUTOFMEMORY;
        return ERROR_SUCCESS;

    case INTERNET_OPTION_PASSWORD:
        FUNC2(req->session->password);
        if (!(req->session->password = FUNC3(buffer))) return ERROR_OUTOFMEMORY;
        return ERROR_SUCCESS;

    case INTERNET_OPTION_PROXY_USERNAME:
        FUNC2(req->session->appInfo->proxyUsername);
        if (!(req->session->appInfo->proxyUsername = FUNC3(buffer))) return ERROR_OUTOFMEMORY;
        return ERROR_SUCCESS;

    case INTERNET_OPTION_PROXY_PASSWORD:
        FUNC2(req->session->appInfo->proxyPassword);
        if (!(req->session->appInfo->proxyPassword = FUNC3(buffer))) return ERROR_OUTOFMEMORY;
        return ERROR_SUCCESS;

    }

    return FUNC0(hdr, option, buffer, size);
}