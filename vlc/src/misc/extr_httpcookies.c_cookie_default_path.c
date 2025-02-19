
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 char* strchr (char const*,char) ;
 char* strdup (char const*) ;
 char* strndup (char const*,int) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static char *cookie_default_path( const char *request_path )
{
    if ( request_path == ((void*)0) || request_path[0] != '/' )
        return strdup("/");

    char *path;
    const char *query_start = strchr( request_path, '?' );
    if ( query_start != ((void*)0) )
        path = strndup( request_path, query_start - request_path );
    else
        path = strdup( request_path );

    if ( path == ((void*)0) )
        return ((void*)0);

    char *last_slash = strrchr(path, '/');
    assert(last_slash != ((void*)0));
    if ( last_slash == path )
        path[1] = '\0';
    else
        *last_slash = '\0';

    return path;
}
