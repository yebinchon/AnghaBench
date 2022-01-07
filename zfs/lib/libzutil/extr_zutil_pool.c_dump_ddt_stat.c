
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int refcnt ;
typedef int ref_psize ;
typedef int ref_lsize ;
typedef int ref_dsize ;
typedef int ref_blocks ;
typedef int psize ;
typedef int lsize ;
typedef int dsize ;
struct TYPE_3__ {unsigned long long dds_blocks; unsigned long long dds_ref_blocks; int dds_ref_dsize; int dds_ref_psize; int dds_ref_lsize; int dds_dsize; int dds_psize; int dds_lsize; } ;
typedef TYPE_1__ ddt_stat_t ;
typedef int blocks ;


 int printf (char*,char*,char*,char*,char*,char*,char*,char*,char*,char*) ;
 int strcpy (char*,char*) ;
 int zfs_nicebytes (int ,char*,int) ;
 int zfs_nicenum (unsigned long long,char*,int) ;

__attribute__((used)) static void
dump_ddt_stat(const ddt_stat_t *dds, int h)
{
 char refcnt[6];
 char blocks[6], lsize[6], psize[6], dsize[6];
 char ref_blocks[6], ref_lsize[6], ref_psize[6], ref_dsize[6];

 if (dds == ((void*)0) || dds->dds_blocks == 0)
  return;

 if (h == -1)
  (void) strcpy(refcnt, "Total");
 else
  zfs_nicenum(1ULL << h, refcnt, sizeof (refcnt));

 zfs_nicenum(dds->dds_blocks, blocks, sizeof (blocks));
 zfs_nicebytes(dds->dds_lsize, lsize, sizeof (lsize));
 zfs_nicebytes(dds->dds_psize, psize, sizeof (psize));
 zfs_nicebytes(dds->dds_dsize, dsize, sizeof (dsize));
 zfs_nicenum(dds->dds_ref_blocks, ref_blocks, sizeof (ref_blocks));
 zfs_nicebytes(dds->dds_ref_lsize, ref_lsize, sizeof (ref_lsize));
 zfs_nicebytes(dds->dds_ref_psize, ref_psize, sizeof (ref_psize));
 zfs_nicebytes(dds->dds_ref_dsize, ref_dsize, sizeof (ref_dsize));

 (void) printf("%6s   %6s   %5s   %5s   %5s   %6s   %5s   %5s   %5s\n",
     refcnt,
     blocks, lsize, psize, dsize,
     ref_blocks, ref_lsize, ref_psize, ref_dsize);
}
