
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_4__ {scalar_t__ size; int path; } ;
typedef TYPE_1__ ProgressInfo ;


 int EOWNERDEAD ;
 int assert (TYPE_1__*) ;
 scalar_t__ cancelled ;
 int free_and_strdup (int *,char const*) ;
 int progress_show (TYPE_1__*) ;

__attribute__((used)) static int progress_path(const char *path, const struct stat *st, void *userdata) {
        ProgressInfo *p = userdata;
        int r;

        assert(p);

        if (cancelled)
                return -EOWNERDEAD;

        r = free_and_strdup(&p->path, path);
        if (r < 0)
                return r;

        p->size = 0;

        progress_show(p);
        return 0;
}
