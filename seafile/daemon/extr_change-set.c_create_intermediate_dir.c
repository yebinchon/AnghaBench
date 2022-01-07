
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int version; } ;
struct TYPE_9__ {TYPE_2__* subdir; } ;
typedef TYPE_1__ ChangeSetDirent ;
typedef TYPE_2__ ChangeSetDir ;


 int EMPTY_SHA1 ;
 int S_IFDIR ;
 int add_dent_to_dir (TYPE_2__*,TYPE_1__*) ;
 TYPE_2__* changeset_dir_new (int ,int ,int *) ;
 TYPE_1__* changeset_dirent_new (int ,int ,char const*,int ,int *,int ) ;

__attribute__((used)) static ChangeSetDir *
create_intermediate_dir (ChangeSetDir *parent, const char *dname)
{
    ChangeSetDirent *dent;

    dent = changeset_dirent_new (EMPTY_SHA1, S_IFDIR, dname, 0, ((void*)0), 0);
    dent->subdir = changeset_dir_new (parent->version, EMPTY_SHA1, ((void*)0));
    add_dent_to_dir (parent, dent);

    return dent->subdir;
}
