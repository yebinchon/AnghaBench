
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; char* scheme_host_port; char* host_port; char* canon_host_port; scalar_t__ is_https; int port; } ;
typedef TYPE_1__ server_t ;
typedef int httpsW ;
typedef char WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int INTERNET_DEFAULT_HTTPS_PORT ;
 int INTERNET_DEFAULT_HTTP_PORT ;
 int TRUE ;
 char* heap_alloc (size_t) ;
 int sprintfW (char*,char const*,char const*,char*,int ) ;
 size_t strlenW (char*) ;

__attribute__((used)) static BOOL process_host_port(server_t *server)
{
    BOOL default_port;
    size_t name_len;
    WCHAR *buf;

    static const WCHAR httpW[] = {'h','t','t','p',0};
    static const WCHAR httpsW[] = {'h','t','t','p','s',0};
    static const WCHAR formatW[] = {'%','s',':','/','/','%','s',':','%','u',0};

    name_len = strlenW(server->name);
    buf = heap_alloc((name_len + 10 )*sizeof(WCHAR) + sizeof(httpsW));
    if(!buf)
        return FALSE;

    sprintfW(buf, formatW, server->is_https ? httpsW : httpW, server->name, server->port);
    server->scheme_host_port = buf;

    server->host_port = server->scheme_host_port + 7 ;
    if(server->is_https)
        server->host_port++;

    default_port = server->port == (server->is_https ? INTERNET_DEFAULT_HTTPS_PORT : INTERNET_DEFAULT_HTTP_PORT);
    server->canon_host_port = default_port ? server->name : server->host_port;
    return TRUE;
}
