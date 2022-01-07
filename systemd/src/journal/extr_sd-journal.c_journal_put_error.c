
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int errors; } ;
typedef TYPE_1__ sd_journal ;


 int EEXIST ;
 int ENOMEM ;
 int INT_TO_PTR (int) ;
 int free (char*) ;
 int hashmap_ensure_allocated (int *,int *) ;
 int hashmap_put (int ,int ,char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static int journal_put_error(sd_journal *j, int r, const char *path) {
        char *copy;
        int k;
        if (r >= 0)
                return r;

        k = hashmap_ensure_allocated(&j->errors, ((void*)0));
        if (k < 0)
                return k;

        if (path) {
                copy = strdup(path);
                if (!copy)
                        return -ENOMEM;
        } else
                copy = ((void*)0);

        k = hashmap_put(j->errors, INT_TO_PTR(r), copy);
        if (k < 0) {
                free(copy);

                if (k == -EEXIST)
                        return 0;

                return k;
        }

        return 0;
}
