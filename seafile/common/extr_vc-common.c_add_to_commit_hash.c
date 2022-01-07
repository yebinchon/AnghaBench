
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_3__ {int commit_id; } ;
typedef TYPE_1__ SeafCommit ;
typedef int GHashTable ;


 int TRUE ;
 int g_hash_table_replace (int *,char*,char*) ;
 char* g_strdup (int ) ;

__attribute__((used)) static gboolean
add_to_commit_hash (SeafCommit *commit, void *vhash, gboolean *stop)
{
    GHashTable *hash = vhash;

    char *key = g_strdup (commit->commit_id);
    g_hash_table_replace (hash, key, key);

    return TRUE;
}
