
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wd_to_path; } ;
typedef TYPE_1__ WatchPathMapping ;


 int g_free (TYPE_1__*) ;
 int g_hash_table_destroy (int ) ;

__attribute__((used)) static void free_mapping (WatchPathMapping *mapping)
{
    g_hash_table_destroy (mapping->wd_to_path);
    g_free (mapping);
}
