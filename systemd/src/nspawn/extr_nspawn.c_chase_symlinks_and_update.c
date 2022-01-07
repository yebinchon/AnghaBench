
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char**) ;
 int chase_symlinks (char*,int *,unsigned int,char**,int *) ;
 int free_and_replace (char*,char*) ;
 int log_error_errno (int,char*,char*) ;

__attribute__((used)) static int chase_symlinks_and_update(char **p, unsigned flags) {
        char *chased;
        int r;

        assert(p);

        if (!*p)
                return 0;

        r = chase_symlinks(*p, ((void*)0), flags, &chased, ((void*)0));
        if (r < 0)
                return log_error_errno(r, "Failed to resolve path %s: %m", *p);

        return free_and_replace(*p, chased);
}
