
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int EINVAL ;
 int utf8_wctomb (unsigned char*,int ,int) ;

__attribute__((used)) static int uni2char(wchar_t uni, unsigned char *out, int boundlen)
{
 int n;

 if ( (n = utf8_wctomb(out, uni, boundlen)) == -1) {
  *out = '?';
  return -EINVAL;
 }
 return n;
}
