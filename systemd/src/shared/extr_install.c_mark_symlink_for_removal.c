
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Set ;


 int EEXIST ;
 int ENOMEM ;
 int assert (char const*) ;
 int path_hash_ops ;
 int path_simplify (char*,int) ;
 int set_consume (int *,char*) ;
 int set_ensure_allocated (int **,int *) ;
 char* strdup (char const*) ;

__attribute__((used)) static int mark_symlink_for_removal(
                Set **remove_symlinks_to,
                const char *p) {

        char *n;
        int r;

        assert(p);

        r = set_ensure_allocated(remove_symlinks_to, &path_hash_ops);
        if (r < 0)
                return r;

        n = strdup(p);
        if (!n)
                return -ENOMEM;

        path_simplify(n, 0);

        r = set_consume(*remove_symlinks_to, n);
        if (r == -EEXIST)
                return 0;
        if (r < 0)
                return r;

        return 1;
}
