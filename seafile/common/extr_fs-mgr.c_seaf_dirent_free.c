
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* modifier; struct TYPE_4__* name; } ;
typedef TYPE_1__ SeafDirent ;


 int g_free (TYPE_1__*) ;

void
seaf_dirent_free (SeafDirent *dent)
{
    if (!dent)
        return;
    g_free (dent->name);
    g_free (dent->modifier);
    g_free (dent);
}
