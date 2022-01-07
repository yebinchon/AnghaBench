
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (unsigned char*) ;
 scalar_t__ pageSize ;
 int print_decode_line (unsigned char*,int,int,char*) ;
 unsigned char* read_content (scalar_t__,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void print_page(int iOfst){
  unsigned char *aData;
  char zTitle[50];
  aData = read_content(pageSize+8, iOfst);
  sprintf(zTitle, "page number for page at offset %d", iOfst);
  print_decode_line(aData-iOfst, iOfst, 4, zTitle);
  free(aData);
}
