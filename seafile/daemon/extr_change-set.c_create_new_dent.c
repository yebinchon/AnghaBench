
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int name; } ;
struct TYPE_7__ {int st_size; int st_mtime; int st_mode; } ;
typedef TYPE_1__ SeafStat ;
typedef TYPE_2__ ChangeSetDirent ;
typedef int ChangeSetDir ;


 int add_dent_to_dir (int *,TYPE_2__*) ;
 TYPE_2__* changeset_dirent_new (char*,int ,char const*,int ,char const*,int ) ;
 int create_ce_mode (int ) ;
 int g_free (int ) ;
 int g_strdup (char const*) ;
 int rawdata_to_hex (unsigned char*,char*,int) ;

__attribute__((used)) static void
create_new_dent (ChangeSetDir *dir,
                 const char *dname,
                 unsigned char *sha1,
                 SeafStat *st,
                 const char *modifier,
                 ChangeSetDirent *in_new_dent)
{
    if (in_new_dent) {
        g_free (in_new_dent->name);
        in_new_dent->name = g_strdup(dname);
        add_dent_to_dir (dir, in_new_dent);
        return;
    }

    char id[41];
    rawdata_to_hex (sha1, id, 20);
    ChangeSetDirent *new_dent;
    new_dent = changeset_dirent_new (id, create_ce_mode(st->st_mode), dname,
                                     st->st_mtime, modifier, st->st_size);

    add_dent_to_dir (dir, new_dent);
}
