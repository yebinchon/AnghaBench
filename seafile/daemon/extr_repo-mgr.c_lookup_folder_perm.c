
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* permission; int path; } ;
struct TYPE_4__ {TYPE_2__* data; struct TYPE_4__* next; } ;
typedef TYPE_1__ GList ;
typedef TYPE_2__ FolderPerm ;


 int g_free (char*) ;
 char* g_strconcat (int ,char*,int *) ;
 char* g_strdup (int ) ;
 scalar_t__ strcmp (int ,char const*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

__attribute__((used)) static char *
lookup_folder_perm (GList *perms, const char *path)
{
    GList *ptr;
    FolderPerm *perm;
    char *folder;
    int len;
    char *permission = ((void*)0);

    for (ptr = perms; ptr; ptr = ptr->next) {
        perm = ptr->data;

        if (strcmp (perm->path, "/") != 0)
            folder = g_strconcat (perm->path, "/", ((void*)0));
        else
            folder = g_strdup(perm->path);

        len = strlen(folder);
        if (strcmp (perm->path, path) == 0 || strncmp(folder, path, len) == 0) {
            permission = perm->permission;
            g_free (folder);
            break;
        }
        g_free (folder);
    }

    return permission;
}
