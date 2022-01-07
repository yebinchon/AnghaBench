
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adns_query ;


 char* adns__alloc_final (int ,size_t) ;
 int memcpy (char*,char*,size_t) ;
 int strlen (char*) ;

void adns__makefinal_str(adns_query qu, char **strp) {
  int l;
  char *before, *after;

  before= *strp;
  if (!before) return;
  l= strlen(before)+1;
  after= adns__alloc_final(qu, (size_t) l);
  memcpy(after,before,(size_t) l);
  *strp= after;
}
