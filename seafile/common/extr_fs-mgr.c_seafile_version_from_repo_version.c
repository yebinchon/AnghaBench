
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CURRENT_SEAFILE_OBJ_VERSION ;

int
seafile_version_from_repo_version (int repo_version)
{
    if (repo_version == 0)
        return 0;
    else
        return CURRENT_SEAFILE_OBJ_VERSION;
}
