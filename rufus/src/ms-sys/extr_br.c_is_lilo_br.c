
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aucRef ;
typedef int FILE ;


 scalar_t__ contains_data (int *,int,unsigned char*,int) ;

int is_lilo_br(FILE *fp)
{


   unsigned char aucRef[] = {'L','I','L','O'};

   return ( contains_data(fp, 0x6, aucRef, sizeof(aucRef)) ||
     contains_data(fp, 0x2, aucRef, sizeof(aucRef)) );
}
