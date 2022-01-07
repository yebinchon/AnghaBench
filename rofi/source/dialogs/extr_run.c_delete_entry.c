
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RUN_CACHE_FILE ;
 int cache_dir ;
 char* g_build_filename (int ,int ,int *) ;
 int g_free (char*) ;
 int history_remove (char*,char const*) ;

__attribute__((used)) static void delete_entry ( const char *cmd )
{
    char *path = g_build_filename ( cache_dir, RUN_CACHE_FILE, ((void*)0) );

    history_remove ( path, cmd );

    g_free ( path );
}
