
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Unit ;
typedef int Manager ;
typedef int FILE ;
typedef int FDSet ;


 int ENOMEM ;
 int log_notice_errno (int,char*,char const*) ;
 int manager_load_unit (int *,char const*,int *,int *,int **) ;
 int unit_deserialize (int *,int *,int *) ;

__attribute__((used)) static int manager_deserialize_one_unit(Manager *m, const char *name, FILE *f, FDSet *fds) {
        Unit *u;
        int r;

        r = manager_load_unit(m, name, ((void*)0), ((void*)0), &u);
        if (r < 0) {
                if (r == -ENOMEM)
                        return r;
                return log_notice_errno(r, "Failed to load unit \"%s\", skipping deserialization: %m", name);
        }

        r = unit_deserialize(u, f, fds);
        if (r < 0) {
                if (r == -ENOMEM)
                        return r;
                return log_notice_errno(r, "Failed to deserialize unit \"%s\", skipping: %m", name);
        }

        return 0;
}
