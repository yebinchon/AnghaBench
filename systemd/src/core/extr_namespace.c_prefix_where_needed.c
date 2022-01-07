
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int has_prefix; int path_malloc; } ;
typedef TYPE_1__ MountEntry ;


 int ENOMEM ;
 int free_and_replace (int ,char*) ;
 int mount_entry_path (TYPE_1__*) ;
 char* path_join (char const*,int ) ;

__attribute__((used)) static int prefix_where_needed(MountEntry *m, size_t n, const char *root_directory) {
        size_t i;



        for (i = 0; i < n; i++) {
                char *s;

                if (m[i].has_prefix)
                        continue;

                s = path_join(root_directory, mount_entry_path(m+i));
                if (!s)
                        return -ENOMEM;

                free_and_replace(m[i].path_malloc, s);
                m[i].has_prefix = 1;
        }

        return 0;
}
