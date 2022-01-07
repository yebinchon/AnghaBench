
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int deleted_store; } ;


 int F_OK ;
 scalar_t__ g_access (char*,int ) ;
 char* g_build_filename (int ,char const*,char const*,int *) ;
 int g_free (char*) ;
 char* g_strdup_printf (char*,char const*,int) ;
 TYPE_1__* seaf ;

__attribute__((used)) static char *
gen_deleted_store_path (const char *type, const char *repo_id)
{
    int n = 1;
    char *path = ((void*)0);
    char *name = ((void*)0);

    path = g_build_filename (seaf->deleted_store, type, repo_id, ((void*)0));
    while (g_access(path, F_OK) == 0 && n < 10) {
        g_free (path);
        name = g_strdup_printf ("%s(%d)", repo_id, n);
        path = g_build_filename (seaf->deleted_store, type, name, ((void*)0));
        g_free (name);
        ++n;
    }

    if (n == 10) {
        g_free (path);
        return ((void*)0);
    }

    return path;
}
