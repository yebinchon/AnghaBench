
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmcSection {int* name; } ;
struct chmcFile {int sections_num; struct chmcSection** sections; } ;
typedef int UInt16 ;
typedef int UChar ;


 int CHMC_ENOMEM ;
 int CHMC_NOERR ;
 int chmc_add_meta (struct chmcFile*,char*,int ,int *,int) ;
 int* malloc (int) ;
 int strlen (int*) ;

int chmc_namelist_create(struct chmcFile *chm, int len)
{
 UInt16 *namelist;

 namelist = malloc(len);
 if (namelist) {
  struct chmcSection *section;
  int i, j, k, name_len;

  k = 0;
  namelist[k++] = len >> 1;
  namelist[k++] = chm->sections_num;
  for( i=0; i < chm->sections_num; i++ ) {
   section = chm->sections[i];

   name_len = strlen(section->name);
   namelist[k++] = name_len;
   for( j=0; j < name_len; j++ )
    namelist[k++] = section->name[j];
   namelist[k++] = 0;
  }
  chmc_add_meta(chm, "::DataSpace/NameList", 0, (UChar *)namelist, len);
 }
 else
  return CHMC_ENOMEM;

 return CHMC_NOERR;
}
