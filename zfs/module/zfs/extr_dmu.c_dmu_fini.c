
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abd_fini () ;
 int arc_fini () ;
 int dbuf_fini () ;
 int dmu_objset_fini () ;
 int dmu_tx_fini () ;
 int dnode_fini () ;
 int l2arc_fini () ;
 int sa_cache_fini () ;
 int xuio_stat_fini () ;
 int zfetch_fini () ;
 int zfs_dbgmsg_fini () ;

void
dmu_fini(void)
{
 arc_fini();
 l2arc_fini();
 dmu_tx_fini();
 zfetch_fini();
 dbuf_fini();
 dnode_fini();
 dmu_objset_fini();
 xuio_stat_fini();
 sa_cache_fini();
 zfs_dbgmsg_fini();
 abd_fini();
}
