
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int euc2sjisibm_g3upper (unsigned char*,unsigned char const,unsigned char const) ;
 int euc2sjisibm_jisx0212 (unsigned char*,unsigned char const,unsigned char const) ;

__attribute__((used)) static inline int euc2sjisibm(unsigned char *sjis, const unsigned char euc_hi,
         const unsigned char euc_lo)
{
 int n;
 if ((n = euc2sjisibm_g3upper(sjis, euc_hi, euc_lo))) {
  return n;
 } else if ((n = euc2sjisibm_jisx0212(sjis, euc_hi, euc_lo))) {
  return n;
 }

 return 0;
}
