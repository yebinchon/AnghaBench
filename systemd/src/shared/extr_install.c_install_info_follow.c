
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; int path; int symlink_target; int name; } ;
typedef TYPE_1__ UnitFileInstallInfo ;
typedef int SearchFlags ;
typedef TYPE_1__ InstallContext ;


 int EINVAL ;
 int EXDEV ;
 scalar_t__ UNIT_FILE_TYPE_SYMLINK ;
 scalar_t__ _UNIT_FILE_TYPE_INVALID ;
 int assert (TYPE_1__*) ;
 int basename (int ) ;
 int free_and_replace (int ,int ) ;
 int streq (int ,int ) ;
 int unit_file_load_or_readlink (TYPE_1__*,TYPE_1__*,int ,char const*,int ) ;

__attribute__((used)) static int install_info_follow(
                InstallContext *c,
                UnitFileInstallInfo *i,
                const char *root_dir,
                SearchFlags flags,
                bool ignore_different_name) {

        assert(c);
        assert(i);

        if (i->type != UNIT_FILE_TYPE_SYMLINK)
                return -EINVAL;
        if (!i->symlink_target)
                return -EINVAL;




        if (!ignore_different_name && !streq(basename(i->symlink_target), i->name))
                return -EXDEV;

        free_and_replace(i->path, i->symlink_target);
        i->type = _UNIT_FILE_TYPE_INVALID;

        return unit_file_load_or_readlink(c, i, i->path, root_dir, flags);
}
