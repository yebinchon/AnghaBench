
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gpointer ;
struct TYPE_3__ {int dents_i; int dents; } ;
typedef TYPE_1__ ChangeSetDir ;


 int g_free (char*) ;
 scalar_t__ g_hash_table_lookup_extended (int ,char const*,int *,int *) ;
 int g_hash_table_remove (int ,char*) ;
 int g_hash_table_steal (int ,char const*) ;
 char* g_utf8_strdown (char const*,int) ;

__attribute__((used)) static void
remove_dent_from_dir (ChangeSetDir *dir, const char *dname)
{
    char *key;

    if (g_hash_table_lookup_extended (dir->dents, dname,
                                      (gpointer*)&key, ((void*)0))) {
        g_hash_table_steal (dir->dents, dname);
        g_free (key);
    }





}
