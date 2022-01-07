
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ddt_stat_t ;
struct TYPE_3__ {int const* ddh_stat; } ;
typedef TYPE_1__ ddt_histogram_t ;


 int dump_ddt_stat (int const*,int) ;
 int printf (char*,...) ;

void
zpool_dump_ddt(const ddt_stat_t *dds_total, const ddt_histogram_t *ddh)
{
 int h;

 (void) printf("\n");

 (void) printf("bucket   "
     "           allocated             "
     "          referenced          \n");
 (void) printf("______   "
     "______________________________   "
     "______________________________\n");

 (void) printf("%6s   %6s   %5s   %5s   %5s   %6s   %5s   %5s   %5s\n",
     "refcnt",
     "blocks", "LSIZE", "PSIZE", "DSIZE",
     "blocks", "LSIZE", "PSIZE", "DSIZE");

 (void) printf("%6s   %6s   %5s   %5s   %5s   %6s   %5s   %5s   %5s\n",
     "------",
     "------", "-----", "-----", "-----",
     "------", "-----", "-----", "-----");

 for (h = 0; h < 64; h++)
  dump_ddt_stat(&ddh->ddh_stat[h], h);

 dump_ddt_stat(dds_total, -1);

 (void) printf("\n");
}
