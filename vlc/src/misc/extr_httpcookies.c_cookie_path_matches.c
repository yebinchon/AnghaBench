
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* psz_path; } ;
typedef TYPE_1__ http_cookie_t ;


 scalar_t__ strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static bool cookie_path_matches( const http_cookie_t * cookie, const char *uripath )
{
    if (uripath == ((void*)0) )
        return 0;
    else if ( strcmp(cookie->psz_path, uripath) == 0 )
        return 1;

    size_t path_len = strlen( uripath );
    size_t prefix_len = strlen( cookie->psz_path );
    return ( path_len > prefix_len ) &&
        ( strncmp(uripath, cookie->psz_path, prefix_len) == 0 ) &&
        ( uripath[prefix_len - 1] == '/' || uripath[prefix_len] == '/' );
}
