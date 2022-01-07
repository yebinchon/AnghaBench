
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* dname; } ;
typedef TYPE_1__ IndexDirent ;


 int g_free (TYPE_1__*) ;

void
index_dirent_free (IndexDirent *dent)
{
    if (!dent)
        return;

    g_free (dent->dname);
    g_free (dent);
}
