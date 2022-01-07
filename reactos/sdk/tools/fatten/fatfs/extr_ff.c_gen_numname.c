
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int DWORD ;
typedef char BYTE ;


 scalar_t__ IsDBCS1 (char) ;
 int mem_cpy (char*,char const*,int) ;

__attribute__((used)) static
void gen_numname (
 BYTE* dst,
 const BYTE* src,
 const WCHAR* lfn,
 UINT seq
)
{
 BYTE ns[8], c;
 UINT i, j;
 WCHAR wc;
 DWORD sr;


 mem_cpy(dst, src, 11);

 if (seq > 5) {
  sr = seq;
  while (*lfn) {
   wc = *lfn++;
   for (i = 0; i < 16; i++) {
    sr = (sr << 1) + (wc & 1);
    wc >>= 1;
    if (sr & 0x10000) sr ^= 0x11021;
   }
  }
  seq = (UINT)sr;
 }


 i = 7;
 do {
  c = (seq % 16) + '0';
  if (c > '9') c += 7;
  ns[i--] = c;
  seq /= 16;
 } while (seq);
 ns[i] = '~';


 for (j = 0; j < i && dst[j] != ' '; j++) {
  if (IsDBCS1(dst[j])) {
   if (j == i - 1) break;
   j++;
  }
 }
 do {
  dst[j++] = (i < 8) ? ns[i++] : ' ';
 } while (j < 8);
}
