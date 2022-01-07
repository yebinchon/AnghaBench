
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int substr_t ;
typedef int comp ;
typedef char WCHAR ;
struct TYPE_3__ {int member_0; int dwHostNameLength; int dwUrlPathLength; char* lpszUrlPath; char const* lpszHostName; } ;
typedef TYPE_1__ URL_COMPONENTSW ;
typedef int BOOL ;


 int FALSE ;
 int InternetCrackUrlW (char const*,int ,int ,TYPE_1__*) ;
 int TRUE ;
 int substr (char const*,int) ;

__attribute__((used)) static BOOL cookie_parse_url(const WCHAR *url, substr_t *host, substr_t *path)
{
    URL_COMPONENTSW comp = { sizeof(comp) };
    static const WCHAR rootW[] = {'/',0};

    comp.dwHostNameLength = 1;
    comp.dwUrlPathLength = 1;

    if(!InternetCrackUrlW(url, 0, 0, &comp) || !comp.dwHostNameLength)
        return FALSE;


    while(comp.dwUrlPathLength && comp.lpszUrlPath[comp.dwUrlPathLength-1] != '/')
        comp.dwUrlPathLength--;

    *host = substr(comp.lpszHostName, comp.dwHostNameLength);
    *path = comp.dwUrlPathLength ? substr(comp.lpszUrlPath, comp.dwUrlPathLength) : substr(rootW, 1);
    return TRUE;
}
