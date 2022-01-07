
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* modifier; struct TYPE_4__* new_name; struct TYPE_4__* name; } ;
typedef TYPE_1__ DiffEntry ;


 int g_free (TYPE_1__*) ;

void
diff_entry_free (DiffEntry *de)
{
    g_free (de->name);
    if (de->new_name)
        g_free (de->new_name);

    g_free (de->modifier);

    g_free (de);
}
