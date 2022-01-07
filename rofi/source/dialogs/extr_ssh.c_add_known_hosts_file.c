
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int user_known_hosts; } ;
typedef TYPE_1__ SSHModePrivateData ;
typedef int GList ;
typedef int GCompareFunc ;


 int g_debug (char*,char const*) ;
 int g_list_append (int ,int ) ;
 int * g_list_find_custom (int ,char const*,int ) ;
 scalar_t__ g_strcmp0 ;
 int g_strdup (char const*) ;

__attribute__((used)) static void add_known_hosts_file ( SSHModePrivateData *pd, const char *token )
{
    GList *item = g_list_find_custom ( pd->user_known_hosts, token, (GCompareFunc)g_strcmp0 );
    if ( item == ((void*)0) ) {
        g_debug("Add '%s' to UserKnownHost list", token);
        pd->user_known_hosts = g_list_append ( pd->user_known_hosts, g_strdup ( token ) );
    } else {
        g_debug("File '%s' already in UserKnownHostsFile list", token);
    }
}
