
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int snprintf (char*,int ,char*,char*,int) ;

__attribute__((used)) static void
ztest_dataset_name(char *dsname, char *pool, int d)
{
 (void) snprintf(dsname, ZFS_MAX_DATASET_NAME_LEN, "%s/ds_%d", pool, d);
}
