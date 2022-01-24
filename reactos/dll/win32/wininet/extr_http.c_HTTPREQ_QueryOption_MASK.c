#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_9__ ;
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_15__ ;
typedef  struct TYPE_26__   TYPE_11__ ;
typedef  struct TYPE_25__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  object_header_t ;
struct TYPE_33__ {int security_flags; int connect_timeout; int /*<<< orphan*/  status_code; int /*<<< orphan*/  proxy; TYPE_15__* netconn; TYPE_5__* req_file; TYPE_4__* session; TYPE_2__* server; } ;
typedef  TYPE_6__ http_request_t ;
struct TYPE_34__ {int /*<<< orphan*/  LastModifiedTime; int /*<<< orphan*/  ExpireTime; } ;
typedef  TYPE_7__ WCHAR ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_36__ {int /*<<< orphan*/  Flags; int /*<<< orphan*/  DestPort; int /*<<< orphan*/  SourcePort; int /*<<< orphan*/  Socket; } ;
struct TYPE_35__ {TYPE_1__* pCertInfo; int /*<<< orphan*/  dwCertEncodingType; } ;
struct TYPE_32__ {int /*<<< orphan*/  file_name; int /*<<< orphan*/  url; } ;
struct TYPE_31__ {TYPE_3__* appInfo; TYPE_7__* password; TYPE_7__* userName; } ;
struct TYPE_30__ {TYPE_7__* proxyPassword; TYPE_7__* proxyUsername; TYPE_7__* agent; } ;
struct TYPE_29__ {int security_flags; int /*<<< orphan*/  port; } ;
struct TYPE_28__ {int /*<<< orphan*/  Issuer; int /*<<< orphan*/  Subject; int /*<<< orphan*/  NotBefore; int /*<<< orphan*/  NotAfter; } ;
struct TYPE_27__ {int security_flags; int /*<<< orphan*/  secure; } ;
struct TYPE_26__ {int /*<<< orphan*/  ftLastModified; int /*<<< orphan*/  ftExpires; } ;
struct TYPE_25__ {int /*<<< orphan*/  dwKeySize; int /*<<< orphan*/ * lpszIssuerInfo; int /*<<< orphan*/ * lpszSubjectInfo; int /*<<< orphan*/  ftStart; int /*<<< orphan*/  ftExpiry; } ;
typedef  TYPE_8__* PCCERT_CONTEXT ;
typedef  TYPE_9__ INTERNET_DIAGNOSTIC_SOCKET_INFO ;
typedef  TYPE_10__ INTERNET_CERTIFICATE_INFOA ;
typedef  TYPE_11__ INTERNET_CACHE_TIMESTAMPS ;
typedef  TYPE_7__ INTERNET_CACHE_ENTRY_INFOW ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CERT_NAME_STR_CRLF_FLAG ; 
 int CERT_SIMPLE_NAME_STR ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int ERROR_FILE_NOT_FOUND ; 
 int ERROR_INSUFFICIENT_BUFFER ; 
 int ERROR_INTERNET_INVALID_OPERATION ; 
 int ERROR_INTERNET_ITEM_NOT_FOUND ; 
 int ERROR_NOT_SUPPORTED ; 
 int ERROR_OUTOFMEMORY ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_7__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  IDSI_FLAG_KEEP_ALIVE ; 
 int /*<<< orphan*/  IDSI_FLAG_PROXY ; 
 int /*<<< orphan*/  IDSI_FLAG_SECURE ; 
 int FUNC6 (int /*<<< orphan*/ *,int,void*,int*,int /*<<< orphan*/ ) ; 
 int INTERNET_HANDLE_TYPE_HTTP_REQUEST ; 
#define  INTERNET_OPTION_CACHE_TIMESTAMPS 141 
#define  INTERNET_OPTION_CONNECT_TIMEOUT 140 
#define  INTERNET_OPTION_DATAFILE_NAME 139 
#define  INTERNET_OPTION_DIAGNOSTIC_SOCKET_INFO 138 
#define  INTERNET_OPTION_HANDLE_TYPE 137 
#define  INTERNET_OPTION_PASSWORD 136 
#define  INTERNET_OPTION_PROXY_PASSWORD 135 
#define  INTERNET_OPTION_PROXY_USERNAME 134 
#define  INTERNET_OPTION_REQUEST_FLAGS 133 
#define  INTERNET_OPTION_SECURITY_CERTIFICATE_STRUCT 132 
#define  INTERNET_OPTION_SECURITY_FLAGS 131 
#define  INTERNET_OPTION_URL 130 
#define  INTERNET_OPTION_USERNAME 129 
#define  INTERNET_OPTION_USER_AGENT 128 
 int INTERNET_REQFLAG_NO_HEADERS ; 
 int INTERNET_REQFLAG_VIA_PROXY ; 
 void* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC12 (TYPE_6__*) ; 
 TYPE_7__* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_10__*,int /*<<< orphan*/ ,int) ; 
 int FUNC19 (TYPE_7__*,void*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC20(object_header_t *hdr, DWORD option, void *buffer, DWORD *size, BOOL unicode)
{
    http_request_t *req = (http_request_t*)hdr;

    switch(option) {
    case INTERNET_OPTION_DIAGNOSTIC_SOCKET_INFO:
    {
        INTERNET_DIAGNOSTIC_SOCKET_INFO *info = buffer;

        FUNC2("INTERNET_DIAGNOSTIC_SOCKET_INFO stub\n");

        if (*size < sizeof(INTERNET_DIAGNOSTIC_SOCKET_INFO))
            return ERROR_INSUFFICIENT_BUFFER;
        *size = sizeof(INTERNET_DIAGNOSTIC_SOCKET_INFO);
        /* FIXME: can't get a SOCKET from our connection since we don't use
         * winsock
         */
        info->Socket = 0;
        /* FIXME: get source port from req->netConnection */
        info->SourcePort = 0;
        info->DestPort = req->server->port;
        info->Flags = 0;
        if (FUNC5(req))
            info->Flags |= IDSI_FLAG_KEEP_ALIVE;
        if (req->proxy)
            info->Flags |= IDSI_FLAG_PROXY;
        if (FUNC15(req->netconn) && req->netconn->secure)
            info->Flags |= IDSI_FLAG_SECURE;

        return ERROR_SUCCESS;
    }

    case 98:
        FUNC10("Queried undocumented option 98, forwarding to INTERNET_OPTION_SECURITY_FLAGS\n");
        /* fall through */
    case INTERNET_OPTION_SECURITY_FLAGS:
    {
        DWORD flags;

        if (*size < sizeof(ULONG))
            return ERROR_INSUFFICIENT_BUFFER;

        *size = sizeof(DWORD);
        flags = FUNC15(req->netconn) ? req->netconn->security_flags : req->security_flags | req->server->security_flags;
        *(DWORD *)buffer = flags;

        FUNC10("INTERNET_OPTION_SECURITY_FLAGS %x\n", flags);
        return ERROR_SUCCESS;
    }

    case INTERNET_OPTION_HANDLE_TYPE:
        FUNC10("INTERNET_OPTION_HANDLE_TYPE\n");

        if (*size < sizeof(ULONG))
            return ERROR_INSUFFICIENT_BUFFER;

        *size = sizeof(DWORD);
        *(DWORD*)buffer = INTERNET_HANDLE_TYPE_HTTP_REQUEST;
        return ERROR_SUCCESS;

    case INTERNET_OPTION_URL: {
        WCHAR *url;
        DWORD res;

        FUNC10("INTERNET_OPTION_URL\n");

        url = FUNC12(req);
        if(!url)
            return ERROR_OUTOFMEMORY;

        res = FUNC19(url, buffer, size, unicode);
        FUNC14(url);
        return res;
    }
    case INTERNET_OPTION_USER_AGENT:
        return FUNC19(req->session->appInfo->agent, buffer, size, unicode);
    case INTERNET_OPTION_USERNAME:
        return FUNC19(req->session->userName, buffer, size, unicode);
    case INTERNET_OPTION_PASSWORD:
        return FUNC19(req->session->password, buffer, size, unicode);
    case INTERNET_OPTION_PROXY_USERNAME:
        return FUNC19(req->session->appInfo->proxyUsername, buffer, size, unicode);
    case INTERNET_OPTION_PROXY_PASSWORD:
        return FUNC19(req->session->appInfo->proxyPassword, buffer, size, unicode);

    case INTERNET_OPTION_CACHE_TIMESTAMPS: {
        INTERNET_CACHE_ENTRY_INFOW *info;
        INTERNET_CACHE_TIMESTAMPS *ts = buffer;
        DWORD nbytes, error;
        BOOL ret;

        FUNC10("INTERNET_OPTION_CACHE_TIMESTAMPS\n");

        if(!req->req_file)
            return ERROR_FILE_NOT_FOUND;

        if (*size < sizeof(*ts))
        {
            *size = sizeof(*ts);
            return ERROR_INSUFFICIENT_BUFFER;
        }

        nbytes = 0;
        ret = FUNC4(req->req_file->url, NULL, &nbytes);
        error = FUNC3();
        if (!ret && error == ERROR_INSUFFICIENT_BUFFER)
        {
            if (!(info = FUNC13(nbytes)))
                return ERROR_OUTOFMEMORY;

            FUNC4(req->req_file->url, info, &nbytes);

            ts->ftExpires = info->ExpireTime;
            ts->ftLastModified = info->LastModifiedTime;

            FUNC14(info);
            *size = sizeof(*ts);
            return ERROR_SUCCESS;
        }
        return error;
    }

    case INTERNET_OPTION_DATAFILE_NAME: {
        DWORD req_size;

        FUNC10("INTERNET_OPTION_DATAFILE_NAME\n");

        if(!req->req_file) {
            *size = 0;
            return ERROR_INTERNET_ITEM_NOT_FOUND;
        }

        if(unicode) {
            req_size = (FUNC16(req->req_file->file_name)+1) * sizeof(WCHAR);
            if(*size < req_size)
                return ERROR_INSUFFICIENT_BUFFER;

            *size = req_size;
            FUNC17(buffer, req->req_file->file_name, *size);
            return ERROR_SUCCESS;
        }else {
            req_size = FUNC11(CP_ACP, 0, req->req_file->file_name, -1, NULL, 0, NULL, NULL);
            if (req_size > *size)
                return ERROR_INSUFFICIENT_BUFFER;

            *size = FUNC11(CP_ACP, 0, req->req_file->file_name,
                    -1, buffer, *size, NULL, NULL);
            return ERROR_SUCCESS;
        }
    }

    case INTERNET_OPTION_SECURITY_CERTIFICATE_STRUCT: {
        PCCERT_CONTEXT context;

        if(!req->netconn)
            return ERROR_INTERNET_INVALID_OPERATION;

        if(*size < sizeof(INTERNET_CERTIFICATE_INFOA)) {
            *size = sizeof(INTERNET_CERTIFICATE_INFOA);
            return ERROR_INSUFFICIENT_BUFFER;
        }

        context = (PCCERT_CONTEXT)FUNC8(req->netconn);
        if(context) {
            INTERNET_CERTIFICATE_INFOA *info = (INTERNET_CERTIFICATE_INFOA*)buffer;
            DWORD len;

            FUNC18(info, 0, sizeof(*info));
            info->ftExpiry = context->pCertInfo->NotAfter;
            info->ftStart = context->pCertInfo->NotBefore;
            len = FUNC1(context->dwCertEncodingType,
                     &context->pCertInfo->Subject, CERT_SIMPLE_NAME_STR|CERT_NAME_STR_CRLF_FLAG, NULL, 0);
            info->lpszSubjectInfo = FUNC7(0, len);
            if(info->lpszSubjectInfo)
                FUNC1(context->dwCertEncodingType,
                         &context->pCertInfo->Subject, CERT_SIMPLE_NAME_STR|CERT_NAME_STR_CRLF_FLAG,
                         info->lpszSubjectInfo, len);
            len = FUNC1(context->dwCertEncodingType,
                     &context->pCertInfo->Issuer, CERT_SIMPLE_NAME_STR|CERT_NAME_STR_CRLF_FLAG, NULL, 0);
            info->lpszIssuerInfo = FUNC7(0, len);
            if(info->lpszIssuerInfo)
                FUNC1(context->dwCertEncodingType,
                         &context->pCertInfo->Issuer, CERT_SIMPLE_NAME_STR|CERT_NAME_STR_CRLF_FLAG,
                         info->lpszIssuerInfo, len);
            info->dwKeySize = FUNC9(req->netconn);
            FUNC0(context);
            return ERROR_SUCCESS;
        }
        return ERROR_NOT_SUPPORTED;
    }
    case INTERNET_OPTION_CONNECT_TIMEOUT:
        if (*size < sizeof(DWORD))
            return ERROR_INSUFFICIENT_BUFFER;

        *size = sizeof(DWORD);
        *(DWORD *)buffer = req->connect_timeout;
        return ERROR_SUCCESS;
    case INTERNET_OPTION_REQUEST_FLAGS: {
        DWORD flags = 0;

        if (*size < sizeof(DWORD))
            return ERROR_INSUFFICIENT_BUFFER;

        /* FIXME: Add support for:
         * INTERNET_REQFLAG_FROM_CACHE
         * INTERNET_REQFLAG_CACHE_WRITE_DISABLED
         */

        if(req->proxy)
            flags |= INTERNET_REQFLAG_VIA_PROXY;
        if(!req->status_code)
            flags |= INTERNET_REQFLAG_NO_HEADERS;

        FUNC10("INTERNET_OPTION_REQUEST_FLAGS returning %x\n", flags);

        *size = sizeof(DWORD);
        *(DWORD*)buffer = flags;
        return ERROR_SUCCESS;
    }
    }

    return FUNC6(hdr, option, buffer, size, unicode);
}