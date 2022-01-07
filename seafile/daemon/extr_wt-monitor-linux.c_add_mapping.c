
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gpointer ;
struct TYPE_3__ {int wd_to_path; } ;
typedef TYPE_1__ WatchPathMapping ;


 int g_hash_table_insert (int ,int ,int ) ;
 int g_strdup (char const*) ;

__attribute__((used)) static void add_mapping (WatchPathMapping *mapping,
                         const char *path,
                         int wd)
{
    g_hash_table_insert (mapping->wd_to_path, (gpointer)(long)wd, g_strdup(path));
}
