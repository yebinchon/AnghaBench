
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ gboolean ;
typedef int dents ;
struct TYPE_12__ {struct TYPE_12__* next; TYPE_1__* data; } ;
struct TYPE_11__ {TYPE_3__* entries; } ;
struct TYPE_10__ {char* name; } ;
typedef TYPE_1__ SeafDirent ;
typedef TYPE_2__ SeafDir ;
typedef TYPE_3__ GList ;
typedef int DiffOptions ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int diff_directories (int,TYPE_1__**,char const*,int *) ;
 int diff_files (int,TYPE_1__**,char const*,int *) ;
 scalar_t__ dirent_same (TYPE_1__*,TYPE_1__*) ;
 int memset (TYPE_1__**,int ,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
diff_trees_recursive (int n, SeafDir *trees[],
                      const char *basedir, DiffOptions *opt)
{
    GList *ptrs[3];
    SeafDirent *dents[3];
    int i;
    SeafDirent *dent;
    char *first_name;
    gboolean done;
    int ret = 0;

    for (i = 0; i < n; ++i) {
        if (trees[i])
            ptrs[i] = trees[i]->entries;
        else
            ptrs[i] = ((void*)0);
    }

    while (1) {
        first_name = ((void*)0);
        memset (dents, 0, sizeof(dents[0])*n);
        done = TRUE;


        for (i = 0; i < n; ++i) {
            if (ptrs[i] != ((void*)0)) {
                done = FALSE;
                dent = ptrs[i]->data;
                if (!first_name)
                    first_name = dent->name;
                else if (strcmp(dent->name, first_name) > 0)
                    first_name = dent->name;
            }
        }

        if (done)
            break;




        for (i = 0; i < n; ++i) {
            if (ptrs[i] != ((void*)0)) {
                dent = ptrs[i]->data;
                if (strcmp(first_name, dent->name) == 0) {
                    dents[i] = dent;
                    ptrs[i] = ptrs[i]->next;
                }
            }
        }

        if (n == 2 && dents[0] && dents[1] && dirent_same(dents[0], dents[1]))
            continue;

        if (n == 3 && dents[0] && dents[1] && dents[2] &&
            dirent_same(dents[0], dents[1]) && dirent_same(dents[0], dents[2]))
            continue;


        ret = diff_files (n, dents, basedir, opt);
        if (ret < 0)
            return ret;


        ret = diff_directories (n, dents, basedir, opt);
        if (ret < 0)
            return ret;
    }

    return ret;
}
