
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int case_conflict_pattern; int tree_root; } ;
typedef TYPE_1__ ChangeSet ;


 int changeset_dir_free (int ) ;
 int g_free (TYPE_1__*) ;
 int g_regex_unref (int ) ;

void
changeset_free (ChangeSet *changeset)
{
    if (!changeset)
        return;

    changeset_dir_free (changeset->tree_root);
    g_regex_unref (changeset->case_conflict_pattern);
    g_free (changeset);
}
