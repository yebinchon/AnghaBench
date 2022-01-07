
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entries; int dir_id; int version; } ;
typedef TYPE_1__ SeafDir ;
typedef int ChangeSetDir ;


 int * changeset_dir_new (int ,int ,int ) ;

__attribute__((used)) static ChangeSetDir *
seaf_dir_to_changeset_dir (SeafDir *seaf_dir)
{
    return changeset_dir_new (seaf_dir->version, seaf_dir->dir_id, seaf_dir->entries);
}
