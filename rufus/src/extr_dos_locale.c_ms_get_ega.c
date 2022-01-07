
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;



__attribute__((used)) static const char* ms_get_ega(ULONG cp)
{
 switch(cp) {
 case 437:
 case 850:
 case 852:
 case 860:
 case 863:
 case 865:
  return "ega.cpi";



 case 857:
 case 861:
 case 869:
 case 737:
  return "ega2.cpi";


 case 775:


 case 855:
 case 866:
  return "ega3.cpi";

 default:
  return ((void*)0);
 }
}
