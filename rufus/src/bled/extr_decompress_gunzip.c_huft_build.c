
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned short n; TYPE_2__* t; } ;
struct TYPE_6__ {unsigned char b; unsigned char e; TYPE_1__ v; } ;
typedef TYPE_2__ huft_t ;
typedef int c ;


 int BMAX ;
 int N_MAX ;
 int memset (unsigned int*,int ,int) ;
 TYPE_2__* xzalloc (unsigned int) ;

__attribute__((used)) static int huft_build(const unsigned *b, const unsigned n,
   const unsigned s, const unsigned short *d,
   const unsigned char *e, huft_t **t, unsigned *m)
{
 unsigned a;
 unsigned c[BMAX + 1];
 unsigned eob_len;
 unsigned f;
 int g;
 int htl;
 unsigned i;
 unsigned j;
 int k;
 unsigned *p;
 huft_t *q;
 huft_t r;
 huft_t *u[BMAX];
 unsigned v[N_MAX];
 int ws[BMAX + 1];
 int w;
 unsigned x[BMAX + 1];
 unsigned *xp;
 int y;
 unsigned z;


 eob_len = n > 256 ? b[256] : BMAX;

 *t = ((void*)0);


 memset(c, 0, sizeof(c));
 p = (unsigned *) b;
 i = n;
 do {
  c[*p]++;
  p++;
 } while (--i);
 if (c[0] == n) {
  *m = 0;
  return 2;
 }


 for (j = 1; (j <= BMAX) && (c[j] == 0); j++)
  continue;
 k = j;
 for (i = BMAX; (c[i] == 0) && i; i--)
  continue;
 g = i;
 *m = (*m < j) ? j : ((*m > i) ? i : *m);


 for (y = 1 << j; j < i; j++, y <<= 1) {
  y -= c[j];
  if (y < 0)
   return 2;
 }
 y -= c[i];
 if (y < 0)
  return 2;
 c[i] += y;


 x[1] = j = 0;
 p = c + 1;
 xp = x + 2;
 while (--i) {
  j += *p++;
  *xp++ = j;
 }


 p = (unsigned *) b;
 i = 0;
 do {
  j = *p++;
  if (j != 0) {
   v[x[j]++] = i;
  }
 } while (++i < n);


 x[0] = i = 0;
 p = v;
 htl = -1;
 w = ws[0] = 0;
 u[0] = ((void*)0);
 q = ((void*)0);
 z = 0;


 for (; k <= g; k++) {
  a = c[k];
  while (a--) {


   while (k > ws[htl + 1]) {
    w = ws[++htl];


    z = g - w;
    z = z > *m ? *m : z;
    j = k - w;
    f = 1 << j;
    if (f > a + 1) {

     f -= a + 1;
     xp = c + k;
     while (++j < z) {
      f <<= 1;
      if (f <= *++xp) {
       break;
      }
      f -= *xp;
     }
    }
    j = ((w + j) > (int)eob_len && w < (int)eob_len) ? eob_len - w : j;
    z = 1 << j;
    ws[htl+1] = w + j;


    q = xzalloc((z + 1) * sizeof(huft_t));
    *t = q + 1;
    t = &(q->v.t);
    u[htl] = ++q;


    if (htl) {
     x[htl] = i;
     r.b = (unsigned char) (w - ws[htl - 1]);
     r.e = (unsigned char) (16 + j);
     r.v.t = q;
     j = (i & ((1 << w) - 1)) >> ws[htl - 1];
     u[htl - 1][j] = r;
    }
   }


   r.b = (unsigned char) (k - w);
   if (p >= v + n) {
    r.e = 99;
   } else if (*p < s) {
    r.e = (unsigned char) (*p < 256 ? 16 : 15);
    r.v.n = (unsigned short) (*p++);
   } else {
    r.e = (unsigned char) e[*p - s];
    r.v.n = d[*p++ - s];
   }


   f = 1 << (k - w);
   for (j = i >> w; j < z; j += f) {
    q[j] = r;
   }


   for (j = 1 << (k - 1); i & j; j >>= 1) {
    i ^= j;
   }
   i ^= j;


   while ((i & ((1 << w) - 1)) != x[htl]) {
    w = ws[--htl];
   }
  }
 }


 *m = ws[1];


 return y != 0 && g != 1;
}
