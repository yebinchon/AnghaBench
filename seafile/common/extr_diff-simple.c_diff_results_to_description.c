
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int status; int name; } ;
struct TYPE_4__ {TYPE_2__* data; struct TYPE_4__* next; } ;
typedef int GString ;
typedef TYPE_1__ GList ;
typedef TYPE_2__ DiffEntry ;
 int FALSE ;
 int g_string_append_printf (int *,char*,char*,...) ;
 char* g_string_free (int *,int ) ;
 int * g_string_new (char*) ;
 char* get_basename (int ) ;

char *
diff_results_to_description (GList *results)
{
    GList *p;
    DiffEntry *de;
    char *add_mod_file = ((void*)0), *removed_file = ((void*)0);
    char *renamed_file = ((void*)0), *renamed_dir = ((void*)0);
    char *new_dir = ((void*)0), *removed_dir = ((void*)0);
    int n_add_mod = 0, n_removed = 0, n_renamed = 0;
    int n_new_dir = 0, n_removed_dir = 0, n_renamed_dir = 0;
    GString *desc;

    if (results == ((void*)0))
        return ((void*)0);

    for (p = results; p != ((void*)0); p = p->next) {
        de = p->data;
        switch (de->status) {
        case 134:
            if (n_add_mod == 0)
                add_mod_file = get_basename(de->name);
            n_add_mod++;
            break;
        case 133:
            if (n_removed == 0)
                removed_file = get_basename(de->name);
            n_removed++;
            break;
        case 128:
            if (n_renamed == 0)
                renamed_file = get_basename(de->name);
            n_renamed++;
            break;
        case 130:
            if (n_renamed_dir == 0)
                renamed_dir = get_basename(de->name);
            n_renamed_dir++;
            break;
        case 129:
            if (n_add_mod == 0)
                add_mod_file = get_basename(de->name);
            n_add_mod++;
            break;
        case 132:
            if (n_new_dir == 0)
                new_dir = get_basename(de->name);
            n_new_dir++;
            break;
        case 131:
            if (n_removed_dir == 0)
                removed_dir = get_basename(de->name);
            n_removed_dir++;
            break;
        }
    }

    desc = g_string_new ("");

    if (n_add_mod == 1)
        g_string_append_printf (desc, "Added or modified \"%s\".\n", add_mod_file);
    else if (n_add_mod > 1)
        g_string_append_printf (desc, "Added or modified \"%s\" and %d more files.\n",
                                add_mod_file, n_add_mod - 1);

    if (n_removed == 1)
        g_string_append_printf (desc, "Deleted \"%s\".\n", removed_file);
    else if (n_removed > 1)
        g_string_append_printf (desc, "Deleted \"%s\" and %d more files.\n",
                                removed_file, n_removed - 1);

    if (n_renamed == 1)
        g_string_append_printf (desc, "Renamed \"%s\".\n", renamed_file);
    else if (n_renamed > 1)
        g_string_append_printf (desc, "Renamed \"%s\" and %d more files.\n",
                                renamed_file, n_renamed - 1);

    if (n_renamed_dir == 1)
        g_string_append_printf (desc, "Renamed directory \"%s\".\n", renamed_dir);
    else if (n_renamed_dir > 1)
        g_string_append_printf (desc, "Renamed \"%s\" and %d more directories.\n",
                                renamed_dir, n_renamed_dir - 1);

    if (n_new_dir == 1)
        g_string_append_printf (desc, "Added directory \"%s\".\n", new_dir);
    else if (n_new_dir > 1)
        g_string_append_printf (desc, "Added \"%s\" and %d more directories.\n",
                                new_dir, n_new_dir - 1);

    if (n_removed_dir == 1)
        g_string_append_printf (desc, "Removed directory \"%s\".\n", removed_dir);
    else if (n_removed_dir > 1)
        g_string_append_printf (desc, "Removed \"%s\" and %d more directories.\n",
                                removed_dir, n_removed_dir - 1);

    return g_string_free (desc, FALSE);
}
