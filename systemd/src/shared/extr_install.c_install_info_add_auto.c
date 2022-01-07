
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UnitFileInstallInfo ;
struct TYPE_3__ {int root_dir; } ;
typedef TYPE_1__ LookupPaths ;
typedef char const InstallContext ;


 int assert (char const*) ;
 int install_info_add (char const*,char const*,char const*,int,int **) ;
 scalar_t__ path_is_absolute (char const*) ;
 char* prefix_roota (int ,char const*) ;

__attribute__((used)) static int install_info_add_auto(
                InstallContext *c,
                const LookupPaths *paths,
                const char *name_or_path,
                UnitFileInstallInfo **ret) {

        assert(c);
        assert(name_or_path);

        if (path_is_absolute(name_or_path)) {
                const char *pp;

                pp = prefix_roota(paths->root_dir, name_or_path);

                return install_info_add(c, ((void*)0), pp, 0, ret);
        } else
                return install_info_add(c, name_or_path, ((void*)0), 0, ret);
}
