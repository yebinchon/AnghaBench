
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cluster_size; } ;


 int HARD_SECTOR_SIZE ;
 TYPE_1__ bs ;
 int die (char*) ;
 int mark_FAT_cluster (int,unsigned int) ;
 int sector_size ;
 int start_data_sector ;

__attribute__((used)) static void
mark_FAT_sector (int sector, unsigned int value)
{
  int cluster;

  cluster = (sector - start_data_sector) / (int) (bs.cluster_size) /
     (sector_size/HARD_SECTOR_SIZE);
  if (cluster < 0)
    die ("Invalid cluster number in mark_FAT_sector: probably bug!");

  mark_FAT_cluster (cluster, value);
}
