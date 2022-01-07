
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UnitFileScope ;
typedef int UnitFileInstallInfo ;
typedef int UnitFileChange ;
typedef int SearchFlags ;
typedef int LookupPaths ;
typedef int InstallContext ;


 int install_info_discover (int ,int *,int const*,char const*,int ,int **,int **,size_t*) ;
 int install_info_may_process (int *,int const*,int **,size_t*) ;

__attribute__((used)) static int install_info_discover_and_check(
                        UnitFileScope scope,
                        InstallContext *c,
                        const LookupPaths *paths,
                        const char *name,
                        SearchFlags flags,
                        UnitFileInstallInfo **ret,
                        UnitFileChange **changes,
                        size_t *n_changes) {

        int r;

        r = install_info_discover(scope, c, paths, name, flags, ret, changes, n_changes);
        if (r < 0)
                return r;

        return install_info_may_process(ret ? *ret : ((void*)0), paths, changes, n_changes);
}
