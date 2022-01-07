
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uc ;
struct AUTO_PROXY_SCRIPT_BUFFER {int dwStructSize; char* lpszScriptBuffer; int dwScriptBufferSize; } ;
typedef int buffer ;
typedef int WINHTTP_PROXY_INFO ;
typedef int WCHAR ;
struct TYPE_4__ {int dwStructSize; int dwHostNameLength; int lpszHostName; } ;
typedef TYPE_1__ URL_COMPONENTSW ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int InternetDeInitializeAutoProxyDll (int *,int ) ;
 int InternetGetProxyInfo (char*,int ,char*,int ,char**,int *) ;
 int InternetInitializeAutoProxyDll (int ,int *,int *,int *,struct AUTO_PROXY_SCRIPT_BUFFER*) ;
 scalar_t__ WinHttpCrackUrl (int const*,int ,int ,TYPE_1__*) ;
 int heap_free (char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int parse_script_result (char*,int *) ;
 char* strdupWA (int const*) ;
 char* strdupWA_sized (int ,int) ;
 int strlen (char*) ;

__attribute__((used)) static BOOL run_script( char *script, DWORD size, const WCHAR *url, WINHTTP_PROXY_INFO *info )
{
    BOOL ret;
    char *result, *urlA;
    DWORD len_result;
    struct AUTO_PROXY_SCRIPT_BUFFER buffer;
    URL_COMPONENTSW uc;

    buffer.dwStructSize = sizeof(buffer);
    buffer.lpszScriptBuffer = script;
    buffer.dwScriptBufferSize = size;

    if (!(urlA = strdupWA( url ))) return FALSE;
    if (!(ret = InternetInitializeAutoProxyDll( 0, ((void*)0), ((void*)0), ((void*)0), &buffer )))
    {
        heap_free( urlA );
        return FALSE;
    }

    memset( &uc, 0, sizeof(uc) );
    uc.dwStructSize = sizeof(uc);
    uc.dwHostNameLength = -1;

    if (WinHttpCrackUrl( url, 0, 0, &uc ))
    {
        char *hostnameA = strdupWA_sized( uc.lpszHostName, uc.dwHostNameLength );

        if ((ret = InternetGetProxyInfo( urlA, strlen(urlA),
                        hostnameA, strlen(hostnameA), &result, &len_result )))
        {
            ret = parse_script_result( result, info );
            heap_free( result );
        }

        heap_free( hostnameA );
    }
    heap_free( urlA );
    return InternetDeInitializeAutoProxyDll( ((void*)0), 0 );
}
