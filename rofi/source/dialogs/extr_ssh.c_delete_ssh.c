
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSH_CACHE_FILE ;
 int cache_dir ;
 char* g_build_filename (int ,int ,int *) ;
 int g_free (char*) ;
 int history_remove (char*,char const*) ;

__attribute__((used)) static void delete_ssh ( const char *host )
{
    if ( !host || !host[0] ) {
        return;
    }
    char *path = g_build_filename ( cache_dir, SSH_CACHE_FILE, ((void*)0) );
    history_remove ( path, host );
    g_free ( path );
}
