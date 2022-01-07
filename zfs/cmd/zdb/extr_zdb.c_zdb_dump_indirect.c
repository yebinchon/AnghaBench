
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blkptr_t ;


 int zdb_print_blkptr (int *,int) ;

__attribute__((used)) static void
zdb_dump_indirect(blkptr_t *bp, int nbps, int flags)
{
 int i;

 for (i = 0; i < nbps; i++)
  zdb_print_blkptr(&bp[i], flags);
}
