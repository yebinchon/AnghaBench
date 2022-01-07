
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;


 int get_stats (int *) ;

void
zfs_refresh_properties(zfs_handle_t *zhp)
{
 (void) get_stats(zhp);
}
