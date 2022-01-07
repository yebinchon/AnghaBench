
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UnitFileScope ;
typedef int UnitFileInstallInfo ;
typedef int UnitFileChange ;
typedef int SearchFlags ;
typedef char LookupPaths ;
typedef char const InstallContext ;


 int assert (char const*) ;
 int install_info_add_auto (char const*,char const*,char const*,int **) ;
 int install_info_traverse (int ,char const*,char const*,int *,int ,int **) ;
 int unit_file_changes_add (int **,size_t*,int,char const*,int *) ;

__attribute__((used)) static int install_info_discover(
                UnitFileScope scope,
                InstallContext *c,
                const LookupPaths *paths,
                const char *name,
                SearchFlags flags,
                UnitFileInstallInfo **ret,
                UnitFileChange **changes,
                size_t *n_changes) {

        UnitFileInstallInfo *i;
        int r;

        assert(c);
        assert(paths);
        assert(name);

        r = install_info_add_auto(c, paths, name, &i);
        if (r >= 0)
                r = install_info_traverse(scope, c, paths, i, flags, ret);

        if (r < 0)
                unit_file_changes_add(changes, n_changes, r, name, ((void*)0));
        return r;
}
