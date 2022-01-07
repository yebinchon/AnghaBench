
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CdioISO9660FileList_t ;
typedef int CdioDataFree_t ;


 int _cdio_list_free (int *,int,int ) ;
 scalar_t__ iso9660_stat_free ;

void
iso9660_filelist_free(CdioISO9660FileList_t *p_filelist) {
  _cdio_list_free(p_filelist, 1, (CdioDataFree_t) iso9660_stat_free);
}
