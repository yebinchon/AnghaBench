
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int sjis_temp ;
struct TYPE_2__ {int (* char2uni ) (unsigned char*,int,int *) ;} ;


 int EINVAL ;
 int ENAMETOOLONG ;
 scalar_t__ IS_EUC_JISX0201KANA (unsigned char const,unsigned char const) ;
 scalar_t__ IS_EUC_JISX0208 (unsigned char const,unsigned char const) ;
 scalar_t__ IS_EUC_UDC_HI (unsigned char const,unsigned char const) ;
 scalar_t__ IS_EUC_UDC_LOW (unsigned char const,unsigned char const) ;
 int MAP_EUC2SJIS (unsigned char const,unsigned char const,int,unsigned char,unsigned char,int) ;
 unsigned char const SS3 ;
 scalar_t__ euc2sjisibm (unsigned char*,unsigned char const,unsigned char const) ;
 TYPE_1__* p_nls ;
 int stub1 (unsigned char*,int,int *) ;

__attribute__((used)) static int char2uni(const unsigned char *rawstring, int boundlen,
      wchar_t *uni)
{
 unsigned char sjis_temp[2];
 int euc_offset, n;

 if ( !p_nls )
  return -EINVAL;
 if (boundlen <= 0)
  return -ENAMETOOLONG;


 if (rawstring[0] > 0x7F) {
  if (rawstring[0] == SS3) {
   if (boundlen < 3)
    return -EINVAL;
   euc_offset = 3;

   if (IS_EUC_UDC_HI(rawstring[1], rawstring[2])) {

    MAP_EUC2SJIS(rawstring[1], rawstring[2], 0xF5,
          sjis_temp[0], sjis_temp[1], 0xF5);
   } else if (euc2sjisibm(sjis_temp,rawstring[1],rawstring[2])) {

   } else {

    return -EINVAL;




   }
  } else {
   if (boundlen < 2)
    return -EINVAL;
   euc_offset = 2;

   if (IS_EUC_JISX0201KANA(rawstring[0], rawstring[1])) {

    sjis_temp[0] = rawstring[1];
    sjis_temp[1] = 0x00;
   } else if (IS_EUC_UDC_LOW(rawstring[0], rawstring[1])) {

    MAP_EUC2SJIS(rawstring[0], rawstring[1], 0xF5,
          sjis_temp[0], sjis_temp[1], 0xF0);
   } else if (IS_EUC_JISX0208(rawstring[0], rawstring[1])) {

    sjis_temp[0] = ((rawstring[0]-0x5f)/2) ^ 0xA0;
    if (!(rawstring[0] & 1))
     sjis_temp[1] = rawstring[1] - 0x02;
    else if (rawstring[1] < 0xE0)
     sjis_temp[1] = rawstring[1] - 0x61;
    else
     sjis_temp[1] = rawstring[1] - 0x60;
   } else {

    return -EINVAL;
   }
  }
 } else {
  euc_offset = 1;


  sjis_temp[0] = rawstring[0];
  sjis_temp[1] = 0x00;
 }

 if ( (n = p_nls->char2uni(sjis_temp, sizeof(sjis_temp), uni)) < 0)
  return n;

 return euc_offset;
}
