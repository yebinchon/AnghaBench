
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CdioISO9660FileList_t ;
typedef int CdioISO9660DirList_t ;


 scalar_t__ _cdio_list_new () ;

CdioISO9660DirList_t *
iso9660_dirlist_new(void) {
  return (CdioISO9660FileList_t *) _cdio_list_new ();
}
