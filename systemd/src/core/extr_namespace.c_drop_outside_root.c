
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t MountEntry ;


 int assert (size_t*) ;
 int log_debug (char*,int ) ;
 int mount_entry_done (size_t*) ;
 int mount_entry_path (size_t*) ;
 int path_startswith (int ,char const*) ;

__attribute__((used)) static void drop_outside_root(const char *root_directory, MountEntry *m, size_t *n) {
        MountEntry *f, *t;

        assert(m);
        assert(n);


        if (!root_directory)
                return;



        for (f = m, t = m; f < m + *n; f++) {

                if (!path_startswith(mount_entry_path(f), root_directory)) {
                        log_debug("%s is outside of root directory.", mount_entry_path(f));
                        mount_entry_done(f);
                        continue;
                }

                *t = *f;
                t++;
        }

        *n = t - m;
}
