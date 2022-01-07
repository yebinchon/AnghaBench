
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uchar_t ;
typedef int u8_normalization_states_t ;
typedef int boolean_t ;


 scalar_t__ U8_ASCII_TOLOWER (scalar_t__) ;
 scalar_t__ U8_ASCII_TOUPPER (scalar_t__) ;
 int U8_CANON_COMP ;
 int U8_CANON_DECOMP ;
 int U8_COMPAT_DECOMP ;
 scalar_t__ U8_ISASCII (scalar_t__) ;
 int U8_STATE_START ;
 int U8_STREAM_SAFE_TEXT_MAX ;
 int U8_TEXTPREP_TOLOWER ;
 int U8_TEXTPREP_TOUPPER ;
 size_t collect_a_seq (size_t,scalar_t__*,scalar_t__**,scalar_t__*,int,int,int,int,int,int*,int *) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int
do_norm_compare(size_t uv, uchar_t *s1, uchar_t *s2, size_t n1, size_t n2,
    int flag, int *errnum)
{
 int result;
 size_t sz1;
 size_t sz2;
 uchar_t u8s1[U8_STREAM_SAFE_TEXT_MAX + 1];
 uchar_t u8s2[U8_STREAM_SAFE_TEXT_MAX + 1];
 uchar_t *s1last;
 uchar_t *s2last;
 boolean_t is_it_toupper;
 boolean_t is_it_tolower;
 boolean_t canonical_decomposition;
 boolean_t compatibility_decomposition;
 boolean_t canonical_composition;
 u8_normalization_states_t state;

 s1last = s1 + n1;
 s2last = s2 + n2;

 is_it_toupper = flag & U8_TEXTPREP_TOUPPER;
 is_it_tolower = flag & U8_TEXTPREP_TOLOWER;
 canonical_decomposition = flag & U8_CANON_DECOMP;
 compatibility_decomposition = flag & U8_COMPAT_DECOMP;
 canonical_composition = flag & U8_CANON_COMP;

 while (s1 < s1last && s2 < s2last) {
  if (U8_ISASCII(*s1) && ((s1 + 1) >= s1last ||
      ((s1 + 1) < s1last && U8_ISASCII(*(s1 + 1))))) {
   if (is_it_toupper)
    u8s1[0] = U8_ASCII_TOUPPER(*s1);
   else if (is_it_tolower)
    u8s1[0] = U8_ASCII_TOLOWER(*s1);
   else
    u8s1[0] = *s1;
   u8s1[1] = '\0';
   sz1 = 1;
   s1++;
  } else {
   state = U8_STATE_START;
   sz1 = collect_a_seq(uv, u8s1, &s1, s1last,
       is_it_toupper, is_it_tolower,
       canonical_decomposition,
       compatibility_decomposition,
       canonical_composition, errnum, &state);
  }

  if (U8_ISASCII(*s2) && ((s2 + 1) >= s2last ||
      ((s2 + 1) < s2last && U8_ISASCII(*(s2 + 1))))) {
   if (is_it_toupper)
    u8s2[0] = U8_ASCII_TOUPPER(*s2);
   else if (is_it_tolower)
    u8s2[0] = U8_ASCII_TOLOWER(*s2);
   else
    u8s2[0] = *s2;
   u8s2[1] = '\0';
   sz2 = 1;
   s2++;
  } else {
   state = U8_STATE_START;
   sz2 = collect_a_seq(uv, u8s2, &s2, s2last,
       is_it_toupper, is_it_tolower,
       canonical_decomposition,
       compatibility_decomposition,
       canonical_composition, errnum, &state);
  }





  if (sz1 == 1 && sz2 == 1) {
   if (*u8s1 > *u8s2)
    return (1);
   if (*u8s1 < *u8s2)
    return (-1);
  } else {
   result = strcmp((const char *)u8s1, (const char *)u8s2);
   if (result != 0)
    return (result);
  }
 }
 if (s1 >= s1last) {
  if (s2 >= s2last)
   return (0);
  return (-1);
 }
 return (1);
}
