
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* hostname; scalar_t__ port; } ;
typedef TYPE_1__ SshEntry ;


 int SSH_CACHE_FILE ;
 int cache_dir ;
 int execshssh (TYPE_1__ const*) ;
 char* g_build_filename (int ,int ,int *) ;
 int g_free (char*) ;
 char* g_strdup_printf (char*,char*,scalar_t__) ;
 int history_set (char*,char*) ;

__attribute__((used)) static void exec_ssh ( const SshEntry *entry )
{
    if ( !(entry->hostname )|| !(entry->hostname[0]) ) {
        return;
    }

    if ( !execshssh ( entry ) ) {
        return;
    }



    char *path = g_build_filename ( cache_dir, SSH_CACHE_FILE, ((void*)0) );

    if ( entry->port > 0 ) {
        char *store = g_strdup_printf("%s\x1F%d", entry->hostname, entry->port );
        history_set ( path, store );
        g_free ( store );
    } else {
        history_set ( path, entry->hostname );
    }
    g_free ( path );
}
