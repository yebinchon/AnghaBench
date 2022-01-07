
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dds_blocks; scalar_t__ dds_dsize; scalar_t__ dds_ref_dsize; scalar_t__ dds_ref_psize; scalar_t__ dds_ref_lsize; } ;
typedef TYPE_1__ ddt_stat_t ;


 int printf (char*,double,double,double,double) ;

__attribute__((used)) static void
dump_dedup_ratio(const ddt_stat_t *dds)
{
 double rL, rP, rD, D, dedup, compress, copies;

 if (dds->dds_blocks == 0)
  return;

 rL = (double)dds->dds_ref_lsize;
 rP = (double)dds->dds_ref_psize;
 rD = (double)dds->dds_ref_dsize;
 D = (double)dds->dds_dsize;

 dedup = rD / D;
 compress = rL / rP;
 copies = rD / rP;

 (void) printf("dedup = %.2f, compress = %.2f, copies = %.2f, "
     "dedup * compress / copies = %.2f\n\n",
     dedup, compress, copies, dedup * compress / copies);
}
