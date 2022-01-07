
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uc ;
struct TYPE_5__ {int * proxy; int * proxyUsername; int * proxyPassword; } ;
typedef TYPE_1__ proxyinfo_t ;
typedef char WCHAR ;
struct TYPE_6__ {int member_0; int dwHostNameLength; int dwUserNameLength; int dwPasswordLength; int lpszPassword; int lpszUserName; int nPort; int lpszHostName; } ;
typedef TYPE_2__ URL_COMPONENTSW ;
typedef int BOOL ;


 int FALSE ;
 int InternetCrackUrlW (char const*,int ,int ,TYPE_2__*) ;
 int TRUE ;
 int * heap_alloc (int) ;
 int heap_free (int *) ;
 int * heap_strdupW (char const*) ;
 void* heap_strndupW (int ,int) ;
 int sprintfW (int *,char const*,int,int ,int ) ;

__attribute__((used)) static BOOL parse_proxy_url( proxyinfo_t *info, const WCHAR *url )
{
    static const WCHAR fmt[] = {'%','.','*','s',':','%','u',0};
    URL_COMPONENTSW uc = {sizeof(uc)};

    uc.dwHostNameLength = 1;
    uc.dwUserNameLength = 1;
    uc.dwPasswordLength = 1;

    if (!InternetCrackUrlW( url, 0, 0, &uc )) return FALSE;
    if (!uc.dwHostNameLength)
    {
        if (!(info->proxy = heap_strdupW( url ))) return FALSE;
        info->proxyUsername = ((void*)0);
        info->proxyPassword = ((void*)0);
        return TRUE;
    }
    if (!(info->proxy = heap_alloc( (uc.dwHostNameLength + 12) * sizeof(WCHAR) ))) return FALSE;
    sprintfW( info->proxy, fmt, uc.dwHostNameLength, uc.lpszHostName, uc.nPort );

    if (!uc.dwUserNameLength) info->proxyUsername = ((void*)0);
    else if (!(info->proxyUsername = heap_strndupW( uc.lpszUserName, uc.dwUserNameLength )))
    {
        heap_free( info->proxy );
        return FALSE;
    }
    if (!uc.dwPasswordLength) info->proxyPassword = ((void*)0);
    else if (!(info->proxyPassword = heap_strndupW( uc.lpszPassword, uc.dwPasswordLength )))
    {
        heap_free( info->proxyUsername );
        heap_free( info->proxy );
        return FALSE;
    }
    return TRUE;
}
