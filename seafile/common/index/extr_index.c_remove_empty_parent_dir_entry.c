
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;


 int g_free (char*) ;
 char* g_strdup (char const*) ;
 int * index_name_exists (struct index_state*,char*,int ,int ) ;
 int remove_file_from_index (struct index_state*,char*) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

void remove_empty_parent_dir_entry (struct index_state *istate, const char *path)
{
    char *parent = g_strdup(path);
    char *slash;


    while (1) {
        slash = strrchr (parent, '/');
        if (!slash)
            break;

        *slash = 0;

        if (index_name_exists (istate, parent, strlen(parent), 0) != ((void*)0)) {
            remove_file_from_index (istate, parent);
            break;
        }
    }

    g_free (parent);
}
