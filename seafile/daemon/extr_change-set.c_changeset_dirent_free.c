
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ subdir; struct TYPE_4__* modifier; struct TYPE_4__* name; } ;
typedef TYPE_1__ ChangeSetDirent ;


 int changeset_dir_free (scalar_t__) ;
 int g_free (TYPE_1__*) ;

__attribute__((used)) static void
changeset_dirent_free (ChangeSetDirent *dent)
{
    if (!dent)
        return;

    g_free (dent->name);
    g_free (dent->modifier);

    if (dent->subdir)
        changeset_dir_free (dent->subdir);
    g_free (dent);
}
