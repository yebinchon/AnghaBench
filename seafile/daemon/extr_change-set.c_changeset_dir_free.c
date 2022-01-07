
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dents_i; int dents; } ;
typedef TYPE_1__ ChangeSetDir ;


 int g_free (TYPE_1__*) ;
 int g_hash_table_destroy (int ) ;

__attribute__((used)) static void
changeset_dir_free (ChangeSetDir *dir)
{
    if (!dir)
        return;
    g_hash_table_destroy (dir->dents);



    g_free (dir);
}
