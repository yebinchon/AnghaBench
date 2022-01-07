
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* clz ;
 int* mask ;

__attribute__((used)) static inline int
find_changing(const unsigned char *line, int x, int w)
{
 int a, b, m, W;

 if (!line)
  return w;


 if (x < 0)
 {
  x = 0;
  m = 0xFF;
 }
 else
 {


  m = mask[x & 7];
 }




 W = w>>3;
 x >>= 3;
 a = line[x];
 b = a ^ (a>>1);
 b &= m;
 if (x >= W)
 {

  x = (x<<3) + clz[b];
  if (x > w)
   x = w;
  return x;
 }
 while (b == 0)
 {
  if (++x >= W)
   goto nearend;
  b = a & 1;
  a = line[x];
  b = (b<<7) ^ a ^ (a>>1);
 }
 return (x<<3) + clz[b];
nearend:

 if ((x<<3) == w)
  return w;
 b = a&1;
 a = line[x];
 b = (b<<7) ^ a ^ (a>>1);
 x = (x<<3) + clz[b];
 if (x > w)
  x = w;
 return x;
}
