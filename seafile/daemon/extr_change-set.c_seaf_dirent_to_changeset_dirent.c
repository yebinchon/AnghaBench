
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int modifier; int mtime; int name; int mode; int id; } ;
typedef TYPE_1__ SeafDirent ;
typedef int ChangeSetDirent ;


 int * changeset_dirent_new (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static ChangeSetDirent *
seaf_dirent_to_changeset_dirent (SeafDirent *seaf_dent)
{
    return changeset_dirent_new (seaf_dent->id, seaf_dent->mode, seaf_dent->name,
                                 seaf_dent->mtime, seaf_dent->modifier, seaf_dent->size);
}
