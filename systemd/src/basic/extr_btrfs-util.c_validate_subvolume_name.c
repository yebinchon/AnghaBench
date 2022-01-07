
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BTRFS_SUBVOL_NAME_MAX ;
 int E2BIG ;
 int EINVAL ;
 int filename_is_valid (char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int validate_subvolume_name(const char *name) {

        if (!filename_is_valid(name))
                return -EINVAL;

        if (strlen(name) > BTRFS_SUBVOL_NAME_MAX)
                return -E2BIG;

        return 0;
}
