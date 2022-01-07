
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dents_i; int dents; } ;
struct TYPE_6__ {int name; } ;
typedef TYPE_1__ ChangeSetDirent ;
typedef TYPE_2__ ChangeSetDir ;


 int g_hash_table_insert (int ,int ,TYPE_1__*) ;
 int g_strdup (int ) ;
 int g_utf8_strdown (int ,int) ;

__attribute__((used)) static void
add_dent_to_dir (ChangeSetDir *dir, ChangeSetDirent *dent)
{
    g_hash_table_insert (dir->dents,
                         g_strdup(dent->name),
                         dent);





}
