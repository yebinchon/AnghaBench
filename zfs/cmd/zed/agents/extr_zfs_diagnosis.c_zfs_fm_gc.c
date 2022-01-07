
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fmd_hdl_t ;


 int zfs_purge_cases (int *) ;

__attribute__((used)) static void
zfs_fm_gc(fmd_hdl_t *hdl)
{
 zfs_purge_cases(hdl);
}
