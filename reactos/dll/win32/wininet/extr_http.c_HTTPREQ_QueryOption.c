
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_15__ ;
typedef struct TYPE_26__ TYPE_11__ ;
typedef struct TYPE_25__ TYPE_10__ ;


typedef int object_header_t ;
struct TYPE_33__ {int security_flags; int connect_timeout; int status_code; int proxy; TYPE_15__* netconn; TYPE_5__* req_file; TYPE_4__* session; TYPE_2__* server; } ;
typedef TYPE_6__ http_request_t ;
struct TYPE_34__ {int LastModifiedTime; int ExpireTime; } ;
typedef TYPE_7__ WCHAR ;
typedef int ULONG ;
struct TYPE_36__ {int Flags; int DestPort; int SourcePort; int Socket; } ;
struct TYPE_35__ {TYPE_1__* pCertInfo; int dwCertEncodingType; } ;
struct TYPE_32__ {int file_name; int url; } ;
struct TYPE_31__ {TYPE_3__* appInfo; TYPE_7__* password; TYPE_7__* userName; } ;
struct TYPE_30__ {TYPE_7__* proxyPassword; TYPE_7__* proxyUsername; TYPE_7__* agent; } ;
struct TYPE_29__ {int security_flags; int port; } ;
struct TYPE_28__ {int Issuer; int Subject; int NotBefore; int NotAfter; } ;
struct TYPE_27__ {int security_flags; int secure; } ;
struct TYPE_26__ {int ftLastModified; int ftExpires; } ;
struct TYPE_25__ {int dwKeySize; int * lpszIssuerInfo; int * lpszSubjectInfo; int ftStart; int ftExpiry; } ;
typedef TYPE_8__* PCCERT_CONTEXT ;
typedef TYPE_9__ INTERNET_DIAGNOSTIC_SOCKET_INFO ;
typedef TYPE_10__ INTERNET_CERTIFICATE_INFOA ;
typedef TYPE_11__ INTERNET_CACHE_TIMESTAMPS ;
typedef TYPE_7__ INTERNET_CACHE_ENTRY_INFOW ;
typedef int DWORD ;
typedef int BOOL ;


 int CERT_NAME_STR_CRLF_FLAG ;
 int CERT_SIMPLE_NAME_STR ;
 int CP_ACP ;
 int CertFreeCertificateContext (TYPE_8__*) ;
 int CertNameToStrA (int ,int *,int,int *,int) ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INTERNET_INVALID_OPERATION ;
 int ERROR_INTERNET_ITEM_NOT_FOUND ;
 int ERROR_NOT_SUPPORTED ;
 int ERROR_OUTOFMEMORY ;
 int ERROR_SUCCESS ;
 int FIXME (char*) ;
 int GetLastError () ;
 int GetUrlCacheEntryInfoW (int ,TYPE_7__*,int*) ;
 int HTTP_KeepAlive (TYPE_6__*) ;
 int IDSI_FLAG_KEEP_ALIVE ;
 int IDSI_FLAG_PROXY ;
 int IDSI_FLAG_SECURE ;
 int INET_QueryOption (int *,int,void*,int*,int ) ;
 int INTERNET_HANDLE_TYPE_HTTP_REQUEST ;
 int INTERNET_REQFLAG_NO_HEADERS ;
 int INTERNET_REQFLAG_VIA_PROXY ;
 void* LocalAlloc (int ,int) ;
 int NETCON_GetCert (TYPE_15__*) ;
 int NETCON_GetCipherStrength (TYPE_15__*) ;
 int TRACE (char*,...) ;
 int WideCharToMultiByte (int ,int ,int ,int,void*,int,int *,int *) ;
 TYPE_7__* compose_request_url (TYPE_6__*) ;
 TYPE_7__* heap_alloc (int) ;
 int heap_free (TYPE_7__*) ;
 int is_valid_netconn (TYPE_15__*) ;
 int lstrlenW (int ) ;
 int memcpy (void*,int ,int) ;
 int memset (TYPE_10__*,int ,int) ;
 int str_to_buffer (TYPE_7__*,void*,int*,int ) ;

__attribute__((used)) static DWORD HTTPREQ_QueryOption(object_header_t *hdr, DWORD option, void *buffer, DWORD *size, BOOL unicode)
{
    http_request_t *req = (http_request_t*)hdr;

    switch(option) {
    case 138:
    {
        INTERNET_DIAGNOSTIC_SOCKET_INFO *info = buffer;

        FIXME("INTERNET_DIAGNOSTIC_SOCKET_INFO stub\n");

        if (*size < sizeof(INTERNET_DIAGNOSTIC_SOCKET_INFO))
            return ERROR_INSUFFICIENT_BUFFER;
        *size = sizeof(INTERNET_DIAGNOSTIC_SOCKET_INFO);



        info->Socket = 0;

        info->SourcePort = 0;
        info->DestPort = req->server->port;
        info->Flags = 0;
        if (HTTP_KeepAlive(req))
            info->Flags |= IDSI_FLAG_KEEP_ALIVE;
        if (req->proxy)
            info->Flags |= IDSI_FLAG_PROXY;
        if (is_valid_netconn(req->netconn) && req->netconn->secure)
            info->Flags |= IDSI_FLAG_SECURE;

        return ERROR_SUCCESS;
    }

    case 98:
        TRACE("Queried undocumented option 98, forwarding to INTERNET_OPTION_SECURITY_FLAGS\n");

    case 131:
    {
        DWORD flags;

        if (*size < sizeof(ULONG))
            return ERROR_INSUFFICIENT_BUFFER;

        *size = sizeof(DWORD);
        flags = is_valid_netconn(req->netconn) ? req->netconn->security_flags : req->security_flags | req->server->security_flags;
        *(DWORD *)buffer = flags;

        TRACE("INTERNET_OPTION_SECURITY_FLAGS %x\n", flags);
        return ERROR_SUCCESS;
    }

    case 137:
        TRACE("INTERNET_OPTION_HANDLE_TYPE\n");

        if (*size < sizeof(ULONG))
            return ERROR_INSUFFICIENT_BUFFER;

        *size = sizeof(DWORD);
        *(DWORD*)buffer = INTERNET_HANDLE_TYPE_HTTP_REQUEST;
        return ERROR_SUCCESS;

    case 130: {
        WCHAR *url;
        DWORD res;

        TRACE("INTERNET_OPTION_URL\n");

        url = compose_request_url(req);
        if(!url)
            return ERROR_OUTOFMEMORY;

        res = str_to_buffer(url, buffer, size, unicode);
        heap_free(url);
        return res;
    }
    case 128:
        return str_to_buffer(req->session->appInfo->agent, buffer, size, unicode);
    case 129:
        return str_to_buffer(req->session->userName, buffer, size, unicode);
    case 136:
        return str_to_buffer(req->session->password, buffer, size, unicode);
    case 134:
        return str_to_buffer(req->session->appInfo->proxyUsername, buffer, size, unicode);
    case 135:
        return str_to_buffer(req->session->appInfo->proxyPassword, buffer, size, unicode);

    case 141: {
        INTERNET_CACHE_ENTRY_INFOW *info;
        INTERNET_CACHE_TIMESTAMPS *ts = buffer;
        DWORD nbytes, error;
        BOOL ret;

        TRACE("INTERNET_OPTION_CACHE_TIMESTAMPS\n");

        if(!req->req_file)
            return ERROR_FILE_NOT_FOUND;

        if (*size < sizeof(*ts))
        {
            *size = sizeof(*ts);
            return ERROR_INSUFFICIENT_BUFFER;
        }

        nbytes = 0;
        ret = GetUrlCacheEntryInfoW(req->req_file->url, ((void*)0), &nbytes);
        error = GetLastError();
        if (!ret && error == ERROR_INSUFFICIENT_BUFFER)
        {
            if (!(info = heap_alloc(nbytes)))
                return ERROR_OUTOFMEMORY;

            GetUrlCacheEntryInfoW(req->req_file->url, info, &nbytes);

            ts->ftExpires = info->ExpireTime;
            ts->ftLastModified = info->LastModifiedTime;

            heap_free(info);
            *size = sizeof(*ts);
            return ERROR_SUCCESS;
        }
        return error;
    }

    case 139: {
        DWORD req_size;

        TRACE("INTERNET_OPTION_DATAFILE_NAME\n");

        if(!req->req_file) {
            *size = 0;
            return ERROR_INTERNET_ITEM_NOT_FOUND;
        }

        if(unicode) {
            req_size = (lstrlenW(req->req_file->file_name)+1) * sizeof(WCHAR);
            if(*size < req_size)
                return ERROR_INSUFFICIENT_BUFFER;

            *size = req_size;
            memcpy(buffer, req->req_file->file_name, *size);
            return ERROR_SUCCESS;
        }else {
            req_size = WideCharToMultiByte(CP_ACP, 0, req->req_file->file_name, -1, ((void*)0), 0, ((void*)0), ((void*)0));
            if (req_size > *size)
                return ERROR_INSUFFICIENT_BUFFER;

            *size = WideCharToMultiByte(CP_ACP, 0, req->req_file->file_name,
                    -1, buffer, *size, ((void*)0), ((void*)0));
            return ERROR_SUCCESS;
        }
    }

    case 132: {
        PCCERT_CONTEXT context;

        if(!req->netconn)
            return ERROR_INTERNET_INVALID_OPERATION;

        if(*size < sizeof(INTERNET_CERTIFICATE_INFOA)) {
            *size = sizeof(INTERNET_CERTIFICATE_INFOA);
            return ERROR_INSUFFICIENT_BUFFER;
        }

        context = (PCCERT_CONTEXT)NETCON_GetCert(req->netconn);
        if(context) {
            INTERNET_CERTIFICATE_INFOA *info = (INTERNET_CERTIFICATE_INFOA*)buffer;
            DWORD len;

            memset(info, 0, sizeof(*info));
            info->ftExpiry = context->pCertInfo->NotAfter;
            info->ftStart = context->pCertInfo->NotBefore;
            len = CertNameToStrA(context->dwCertEncodingType,
                     &context->pCertInfo->Subject, CERT_SIMPLE_NAME_STR|CERT_NAME_STR_CRLF_FLAG, ((void*)0), 0);
            info->lpszSubjectInfo = LocalAlloc(0, len);
            if(info->lpszSubjectInfo)
                CertNameToStrA(context->dwCertEncodingType,
                         &context->pCertInfo->Subject, CERT_SIMPLE_NAME_STR|CERT_NAME_STR_CRLF_FLAG,
                         info->lpszSubjectInfo, len);
            len = CertNameToStrA(context->dwCertEncodingType,
                     &context->pCertInfo->Issuer, CERT_SIMPLE_NAME_STR|CERT_NAME_STR_CRLF_FLAG, ((void*)0), 0);
            info->lpszIssuerInfo = LocalAlloc(0, len);
            if(info->lpszIssuerInfo)
                CertNameToStrA(context->dwCertEncodingType,
                         &context->pCertInfo->Issuer, CERT_SIMPLE_NAME_STR|CERT_NAME_STR_CRLF_FLAG,
                         info->lpszIssuerInfo, len);
            info->dwKeySize = NETCON_GetCipherStrength(req->netconn);
            CertFreeCertificateContext(context);
            return ERROR_SUCCESS;
        }
        return ERROR_NOT_SUPPORTED;
    }
    case 140:
        if (*size < sizeof(DWORD))
            return ERROR_INSUFFICIENT_BUFFER;

        *size = sizeof(DWORD);
        *(DWORD *)buffer = req->connect_timeout;
        return ERROR_SUCCESS;
    case 133: {
        DWORD flags = 0;

        if (*size < sizeof(DWORD))
            return ERROR_INSUFFICIENT_BUFFER;






        if(req->proxy)
            flags |= INTERNET_REQFLAG_VIA_PROXY;
        if(!req->status_code)
            flags |= INTERNET_REQFLAG_NO_HEADERS;

        TRACE("INTERNET_OPTION_REQUEST_FLAGS returning %x\n", flags);

        *size = sizeof(DWORD);
        *(DWORD*)buffer = flags;
        return ERROR_SUCCESS;
    }
    }

    return INET_QueryOption(hdr, option, buffer, size, unicode);
}
