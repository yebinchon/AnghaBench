
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CdioISO9660DirList_t ;


 int _cdio_list_free (int *,int,int ) ;
 int free ;

void
iso9660_dirlist_free(CdioISO9660DirList_t *p_filelist) {
  _cdio_list_free(p_filelist, 1, free);
}
