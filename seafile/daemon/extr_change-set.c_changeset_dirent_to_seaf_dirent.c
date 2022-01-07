
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int modifier; int mtime; int name; int mode; int id; } ;
typedef int SeafDirent ;
typedef TYPE_1__ ChangeSetDirent ;


 int * seaf_dirent_new (int,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static SeafDirent *
changeset_dirent_to_seaf_dirent (int version, ChangeSetDirent *dent)
{
    return seaf_dirent_new (version, dent->id, dent->mode, dent->name,
                            dent->mtime, dent->modifier, dent->size);
}
