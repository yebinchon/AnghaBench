
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int EINVAL ;
 int ENAMETOOLONG ;
 unsigned char** page_uni2charset ;

__attribute__((used)) static int uni2char(const wchar_t uni,
      unsigned char *out, int boundlen)
{
 unsigned char *uni2charset;
 unsigned char cl = uni&0xFF;
 unsigned char ch = (uni>>8)&0xFF;

 if (boundlen <= 0)
  return -ENAMETOOLONG;

 if (ch == 0xFF && 0x61 <= cl && cl <= 0x9F) {
  out[0] = cl + 0x40;
  return 1;
 }
 uni2charset = page_uni2charset[ch];
 if (uni2charset) {
  if (boundlen < 2)
   return -ENAMETOOLONG;

  out[0] = uni2charset[cl*2];
  out[1] = uni2charset[cl*2+1];
  if (out[0] == 0x00 && out[1] == 0x00)
   return -EINVAL;
  return 2;
 } else if ((ch == 0) && (cl <= 0x7F)) {
  out[0] = cl;
  return 1;
 }
 else
  return -EINVAL;
}
