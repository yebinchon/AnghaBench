
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int object_header_t ;
struct TYPE_4__ {int connect_timeout; int proxyBypass; int proxy; int accessType; int agent; } ;
typedef TYPE_1__ appinfo_t ;
typedef int WCHAR ;
typedef int ULONG ;
struct TYPE_6__ {int * lpszProxyBypass; int * lpszProxy; int dwAccessType; } ;
struct TYPE_5__ {int * lpszProxyBypass; int * lpszProxy; int dwAccessType; } ;
typedef void* LPWSTR ;
typedef void* LPSTR ;
typedef int LPBYTE ;
typedef TYPE_2__ INTERNET_PROXY_INFOW ;
typedef TYPE_3__ INTERNET_PROXY_INFOA ;
typedef int DWORD ;
typedef int BOOL ;


 int CP_ACP ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 int INET_QueryOption (int *,int,void*,int*,int ) ;
 int INTERNET_HANDLE_TYPE_INTERNET ;




 int TRACE (char*) ;
 int WideCharToMultiByte (int ,int ,int ,int,void*,int,int *,int *) ;
 int lstrcpyW (void*,int ) ;
 int lstrlenW (int ) ;
 int strcpyW (void*,int ) ;
 int strlenW (int ) ;

__attribute__((used)) static DWORD APPINFO_QueryOption(object_header_t *hdr, DWORD option, void *buffer, DWORD *size, BOOL unicode)
{
    appinfo_t *ai = (appinfo_t*)hdr;

    switch(option) {
    case 130:
        TRACE("INTERNET_OPTION_HANDLE_TYPE\n");

        if (*size < sizeof(ULONG))
            return ERROR_INSUFFICIENT_BUFFER;

        *size = sizeof(DWORD);
        *(DWORD*)buffer = INTERNET_HANDLE_TYPE_INTERNET;
        return ERROR_SUCCESS;

    case 128: {
        DWORD bufsize;

        TRACE("INTERNET_OPTION_USER_AGENT\n");

        bufsize = *size;

        if (unicode) {
            DWORD len = ai->agent ? strlenW(ai->agent) : 0;

            *size = (len + 1) * sizeof(WCHAR);
            if(!buffer || bufsize < *size)
                return ERROR_INSUFFICIENT_BUFFER;

            if (ai->agent)
                strcpyW(buffer, ai->agent);
            else
                *(WCHAR *)buffer = 0;



            *size = len;
        }else {
            if (ai->agent)
                *size = WideCharToMultiByte(CP_ACP, 0, ai->agent, -1, ((void*)0), 0, ((void*)0), ((void*)0));
            else
                *size = 1;
            if(!buffer || bufsize < *size)
                return ERROR_INSUFFICIENT_BUFFER;

            if (ai->agent)
                WideCharToMultiByte(CP_ACP, 0, ai->agent, -1, buffer, *size, ((void*)0), ((void*)0));
            else
                *(char *)buffer = 0;



            *size -= 1;
        }

        return ERROR_SUCCESS;
    }

    case 129:
        if(!size) return ERROR_INVALID_PARAMETER;
        if (unicode) {
            INTERNET_PROXY_INFOW *pi = (INTERNET_PROXY_INFOW *)buffer;
            DWORD proxyBytesRequired = 0, proxyBypassBytesRequired = 0;
            LPWSTR proxy, proxy_bypass;

            if (ai->proxy)
                proxyBytesRequired = (lstrlenW(ai->proxy) + 1) * sizeof(WCHAR);
            if (ai->proxyBypass)
                proxyBypassBytesRequired = (lstrlenW(ai->proxyBypass) + 1) * sizeof(WCHAR);
            if (!pi || *size < sizeof(INTERNET_PROXY_INFOW) + proxyBytesRequired + proxyBypassBytesRequired)
            {
                *size = sizeof(INTERNET_PROXY_INFOW) + proxyBytesRequired + proxyBypassBytesRequired;
                return ERROR_INSUFFICIENT_BUFFER;
            }
            proxy = (LPWSTR)((LPBYTE)buffer + sizeof(INTERNET_PROXY_INFOW));
            proxy_bypass = (LPWSTR)((LPBYTE)buffer + sizeof(INTERNET_PROXY_INFOW) + proxyBytesRequired);

            pi->dwAccessType = ai->accessType;
            pi->lpszProxy = ((void*)0);
            pi->lpszProxyBypass = ((void*)0);
            if (ai->proxy) {
                lstrcpyW(proxy, ai->proxy);
                pi->lpszProxy = proxy;
            }

            if (ai->proxyBypass) {
                lstrcpyW(proxy_bypass, ai->proxyBypass);
                pi->lpszProxyBypass = proxy_bypass;
            }

            *size = sizeof(INTERNET_PROXY_INFOW) + proxyBytesRequired + proxyBypassBytesRequired;
            return ERROR_SUCCESS;
        }else {
            INTERNET_PROXY_INFOA *pi = (INTERNET_PROXY_INFOA *)buffer;
            DWORD proxyBytesRequired = 0, proxyBypassBytesRequired = 0;
            LPSTR proxy, proxy_bypass;

            if (ai->proxy)
                proxyBytesRequired = WideCharToMultiByte(CP_ACP, 0, ai->proxy, -1, ((void*)0), 0, ((void*)0), ((void*)0));
            if (ai->proxyBypass)
                proxyBypassBytesRequired = WideCharToMultiByte(CP_ACP, 0, ai->proxyBypass, -1,
                        ((void*)0), 0, ((void*)0), ((void*)0));
            if (!pi || *size < sizeof(INTERNET_PROXY_INFOA) + proxyBytesRequired + proxyBypassBytesRequired)
            {
                *size = sizeof(INTERNET_PROXY_INFOA) + proxyBytesRequired + proxyBypassBytesRequired;
                return ERROR_INSUFFICIENT_BUFFER;
            }
            proxy = (LPSTR)((LPBYTE)buffer + sizeof(INTERNET_PROXY_INFOA));
            proxy_bypass = (LPSTR)((LPBYTE)buffer + sizeof(INTERNET_PROXY_INFOA) + proxyBytesRequired);

            pi->dwAccessType = ai->accessType;
            pi->lpszProxy = ((void*)0);
            pi->lpszProxyBypass = ((void*)0);
            if (ai->proxy) {
                WideCharToMultiByte(CP_ACP, 0, ai->proxy, -1, proxy, proxyBytesRequired, ((void*)0), ((void*)0));
                pi->lpszProxy = proxy;
            }

            if (ai->proxyBypass) {
                WideCharToMultiByte(CP_ACP, 0, ai->proxyBypass, -1, proxy_bypass,
                        proxyBypassBytesRequired, ((void*)0), ((void*)0));
                pi->lpszProxyBypass = proxy_bypass;
            }

            *size = sizeof(INTERNET_PROXY_INFOA) + proxyBytesRequired + proxyBypassBytesRequired;
            return ERROR_SUCCESS;
        }

    case 131:
        TRACE("INTERNET_OPTION_CONNECT_TIMEOUT\n");

        if (*size < sizeof(ULONG))
            return ERROR_INSUFFICIENT_BUFFER;

        *(ULONG*)buffer = ai->connect_timeout;
        *size = sizeof(ULONG);

        return ERROR_SUCCESS;
    }

    return INET_QueryOption(hdr, option, buffer, size, unicode);
}
