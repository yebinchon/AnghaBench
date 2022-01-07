
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uchar_t ;
typedef int boolean_t ;


 int EILSEQ ;
 int EINVAL ;
 size_t U8_ASCII_TOLOWER (size_t) ;
 size_t U8_ASCII_TOUPPER (size_t) ;
 int U8_MB_CUR_MAX ;
 int do_case_conv (size_t,size_t*,size_t*,int,int ) ;
 int strcmp (char const*,char const*) ;
 int* u8_number_of_bytes ;

__attribute__((used)) static int
do_case_compare(size_t uv, uchar_t *s1, uchar_t *s2, size_t n1,
    size_t n2, boolean_t is_it_toupper, int *errnum)
{
 int f;
 int sz1;
 int sz2;
 size_t j;
 size_t i1;
 size_t i2;
 uchar_t u8s1[U8_MB_CUR_MAX + 1];
 uchar_t u8s2[U8_MB_CUR_MAX + 1];

 i1 = i2 = 0;
 while (i1 < n1 && i2 < n2) {






  sz1 = u8_number_of_bytes[*s1];
  if (sz1 < 0) {
   *errnum = EILSEQ;
   sz1 = 1;
  }
  if (sz1 == 1) {
   if (is_it_toupper)
    u8s1[0] = U8_ASCII_TOUPPER(*s1);
   else
    u8s1[0] = U8_ASCII_TOLOWER(*s1);
   s1++;
   u8s1[1] = '\0';
  } else if ((i1 + sz1) > n1) {
   *errnum = EINVAL;
   for (j = 0; (i1 + j) < n1; )
    u8s1[j++] = *s1++;
   u8s1[j] = '\0';
  } else {
   (void) do_case_conv(uv, u8s1, s1, sz1, is_it_toupper);
   s1 += sz1;
  }


  sz2 = u8_number_of_bytes[*s2];
  if (sz2 < 0) {
   *errnum = EILSEQ;
   sz2 = 1;
  }

  if (sz2 == 1) {
   if (is_it_toupper)
    u8s2[0] = U8_ASCII_TOUPPER(*s2);
   else
    u8s2[0] = U8_ASCII_TOLOWER(*s2);
   s2++;
   u8s2[1] = '\0';
  } else if ((i2 + sz2) > n2) {
   *errnum = EINVAL;
   for (j = 0; (i2 + j) < n2; )
    u8s2[j++] = *s2++;
   u8s2[j] = '\0';
  } else {
   (void) do_case_conv(uv, u8s2, s2, sz2, is_it_toupper);
   s2 += sz2;
  }


  if (sz1 == 1 && sz2 == 1) {
   if (*u8s1 > *u8s2)
    return (1);
   if (*u8s1 < *u8s2)
    return (-1);
  } else {
   f = strcmp((const char *)u8s1, (const char *)u8s2);
   if (f != 0)
    return (f);
  }





  i1 += sz1;
  i2 += sz2;
 }
 if (i1 >= n1) {
  if (i2 >= n2)
   return (0);
  return (-1);
 }
 return (1);
}
