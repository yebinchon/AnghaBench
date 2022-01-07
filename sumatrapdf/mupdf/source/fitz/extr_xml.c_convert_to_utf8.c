
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 size_t FZ_UTFMAX ;
 unsigned short* find_xml_encoding (char*) ;
 char* fz_malloc (int *,size_t) ;
 int fz_runetochar (char*,int) ;

__attribute__((used)) static char *convert_to_utf8(fz_context *ctx, unsigned char *s, size_t n, int *dofree)
{
 const unsigned short *table;
 const unsigned char *e = s + n;
 char *dst, *d;
 int c;

 if (s[0] == 0xFE && s[1] == 0xFF) {
  s += 2;
  dst = d = fz_malloc(ctx, n * FZ_UTFMAX);
  while (s + 1 < e) {
   c = s[0] << 8 | s[1];
   d += fz_runetochar(d, c);
   s += 2;
  }
  *d = 0;
  *dofree = 1;
  return dst;
 }

 if (s[0] == 0xFF && s[1] == 0xFE) {
  s += 2;
  dst = d = fz_malloc(ctx, n * FZ_UTFMAX);
  while (s + 1 < e) {
   c = s[0] | s[1] << 8;
   d += fz_runetochar(d, c);
   s += 2;
  }
  *d = 0;
  *dofree = 1;
  return dst;
 }

 table = find_xml_encoding((char*)s);
 if (table) {
  dst = d = fz_malloc(ctx, n * FZ_UTFMAX);
  while (*s) {
   c = table[*s++];
   d += fz_runetochar(d, c);
  }
  *d = 0;
  *dofree = 1;
  return dst;
 }

 *dofree = 0;

 if (s[0] == 0xEF && s[1] == 0xBB && s[2] == 0xBF)
  return (char*)s+3;

 return (char*)s;
}
