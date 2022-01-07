
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char LookupPaths ;


 int SYSTEM_DATA_UNIT_PATH ;
 int assert (char const*) ;
 int path_equal (char const*,int ) ;
 scalar_t__ path_startswith (char const*,char*) ;
 char* skip_root (char const*,char const*) ;

__attribute__((used)) static int path_is_vendor(const LookupPaths *p, const char *path) {
        const char *rpath;

        assert(p);
        assert(path);

        rpath = skip_root(p, path);
        if (!rpath)
                return 0;

        if (path_startswith(rpath, "/usr"))
                return 1;






        return path_equal(rpath, SYSTEM_DATA_UNIT_PATH);
}
