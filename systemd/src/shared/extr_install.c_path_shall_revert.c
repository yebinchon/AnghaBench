
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char LookupPaths ;


 int assert (char const*) ;
 int path_is_config (char const*,char const*,int) ;
 int path_is_control (char const*,char const*) ;
 int path_is_transient (char const*,char const*) ;

__attribute__((used)) static int path_shall_revert(const LookupPaths *paths, const char *path) {
        int r;

        assert(paths);
        assert(path);



        r = path_is_config(paths, path, 1);
        if (r != 0)
                return r;

        r = path_is_control(paths, path);
        if (r != 0)
                return r;

        return path_is_transient(paths, path);
}
