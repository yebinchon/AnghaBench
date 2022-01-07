
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blkptr_t ;


 int SPA_GBH_NBLKPTRS ;
 int zdb_dump_indirect (int *,int ,int) ;

__attribute__((used)) static void
zdb_dump_gbh(void *buf, int flags)
{
 zdb_dump_indirect((blkptr_t *)buf, SPA_GBH_NBLKPTRS, flags);
}
