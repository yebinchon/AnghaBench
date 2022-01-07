
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct attr {char* value; int name; } ;
typedef int session_t ;
struct TYPE_5__ {int path; TYPE_1__* connect; } ;
typedef TYPE_2__ request_t ;
typedef int cookie_t ;
typedef char WCHAR ;
struct TYPE_4__ {int servername; int * session; } ;
typedef int BOOL ;


 int FALSE ;
 int FIXME (char*,int ) ;
 int add_cookie (int *,int *,char*,char*) ;
 int debugstr_w (int ) ;
 int free_attr (struct attr*) ;
 int free_cookie (int *) ;
 char* heap_alloc (int) ;
 int heap_free (char*) ;
 struct attr* parse_attr (char*,int*) ;
 int * parse_cookie (char*) ;
 int strcmpiW (int ,char const*) ;
 int strcpyW (char*,char const*) ;
 char* strdupW (int ) ;
 int strlenW (char const*) ;
 char* strrchrW (char*,char) ;

BOOL set_cookies( request_t *request, const WCHAR *cookies )
{
    static const WCHAR pathW[] = {'p','a','t','h',0};
    static const WCHAR domainW[] = {'d','o','m','a','i','n',0};
    BOOL ret = FALSE;
    WCHAR *buffer, *p;
    WCHAR *cookie_domain = ((void*)0), *cookie_path = ((void*)0);
    struct attr *attr, *domain = ((void*)0), *path = ((void*)0);
    session_t *session = request->connect->session;
    cookie_t *cookie;
    int len, used;

    len = strlenW( cookies );
    if (!(buffer = heap_alloc( (len + 1) * sizeof(WCHAR) ))) return FALSE;
    strcpyW( buffer, cookies );

    p = buffer;
    while (*p && *p != ';') p++;
    if (*p == ';') *p++ = 0;
    if (!(cookie = parse_cookie( buffer )))
    {
        heap_free( buffer );
        return FALSE;
    }
    len = strlenW( p );
    while (len && (attr = parse_attr( p, &used )))
    {
        if (!strcmpiW( attr->name, domainW ))
        {
            domain = attr;
            cookie_domain = attr->value;
        }
        else if (!strcmpiW( attr->name, pathW ))
        {
            path = attr;
            cookie_path = attr->value;
        }
        else
        {
            FIXME( "unhandled attribute %s\n", debugstr_w(attr->name) );
            free_attr( attr );
        }
        len -= used;
        p += used;
    }
    if (!cookie_domain && !(cookie_domain = strdupW( request->connect->servername ))) goto end;
    if (!cookie_path && !(cookie_path = strdupW( request->path ))) goto end;

    if ((p = strrchrW( cookie_path, '/' )) && p != cookie_path) *p = 0;
    ret = add_cookie( session, cookie, cookie_domain, cookie_path );

end:
    if (!ret) free_cookie( cookie );
    if (domain) free_attr( domain );
    else heap_free( cookie_domain );
    if (path) free_attr( path );
    else heap_free( cookie_path );
    heap_free( buffer );
    return ret;
}
