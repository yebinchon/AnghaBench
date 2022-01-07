
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int object_header_t ;
struct TYPE_7__ {int security_flags; int connect_timeout; int send_timeout; int receive_timeout; TYPE_2__* session; TYPE_4__* netconn; } ;
typedef TYPE_3__ http_request_t ;
struct TYPE_8__ {int security_flags; } ;
struct TYPE_6__ {TYPE_1__* appInfo; void* password; void* userName; } ;
struct TYPE_5__ {void* proxyPassword; void* proxyUsername; } ;
typedef int DWORD ;


 int ERROR_INTERNET_OPTION_NOT_SETTABLE ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_OUTOFMEMORY ;
 int ERROR_SUCCESS ;
 int INET_SetOption (int *,int,void*,int) ;
 int SECURITY_SET_MASK ;
 int TRACE (char*,...) ;
 int heap_free (void*) ;
 void* heap_strdupW (void*) ;
 int is_valid_netconn (TYPE_4__*) ;

__attribute__((used)) static DWORD HTTPREQ_SetOption(object_header_t *hdr, DWORD option, void *buffer, DWORD size)
{
    http_request_t *req = (http_request_t*)hdr;

    switch(option) {
    case 99:
        TRACE("Undocumented option 99\n");

        if (!buffer || size != sizeof(DWORD))
            return ERROR_INVALID_PARAMETER;
        if(*(DWORD*)buffer & ~SECURITY_SET_MASK)
            return ERROR_INTERNET_OPTION_NOT_SETTABLE;


    case 130:
    {
        DWORD flags;

        if (!buffer || size != sizeof(DWORD))
            return ERROR_INVALID_PARAMETER;
        flags = *(DWORD *)buffer;
        TRACE("INTERNET_OPTION_SECURITY_FLAGS %08x\n", flags);
        flags &= SECURITY_SET_MASK;
        req->security_flags |= flags;
        if(is_valid_netconn(req->netconn))
            req->netconn->security_flags |= flags;
        return ERROR_SUCCESS;
    }
    case 135:
        if (!buffer || size != sizeof(DWORD)) return ERROR_INVALID_PARAMETER;
        req->connect_timeout = *(DWORD *)buffer;
        return ERROR_SUCCESS;

    case 129:
        if (!buffer || size != sizeof(DWORD)) return ERROR_INVALID_PARAMETER;
        req->send_timeout = *(DWORD *)buffer;
        return ERROR_SUCCESS;

    case 131:
        if (!buffer || size != sizeof(DWORD)) return ERROR_INVALID_PARAMETER;
        req->receive_timeout = *(DWORD *)buffer;
        return ERROR_SUCCESS;

    case 128:
        heap_free(req->session->userName);
        if (!(req->session->userName = heap_strdupW(buffer))) return ERROR_OUTOFMEMORY;
        return ERROR_SUCCESS;

    case 134:
        heap_free(req->session->password);
        if (!(req->session->password = heap_strdupW(buffer))) return ERROR_OUTOFMEMORY;
        return ERROR_SUCCESS;

    case 132:
        heap_free(req->session->appInfo->proxyUsername);
        if (!(req->session->appInfo->proxyUsername = heap_strdupW(buffer))) return ERROR_OUTOFMEMORY;
        return ERROR_SUCCESS;

    case 133:
        heap_free(req->session->appInfo->proxyPassword);
        if (!(req->session->appInfo->proxyPassword = heap_strdupW(buffer))) return ERROR_OUTOFMEMORY;
        return ERROR_SUCCESS;

    }

    return INET_SetOption(hdr, option, buffer, size);
}
