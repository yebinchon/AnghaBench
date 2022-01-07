
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int LBASE ;
 int NCOUNT ;
 int SBASE ;
 int SCOUNT ;
 int TBASE ;
 int TCOUNT ;
 int VBASE ;

__attribute__((used)) static int hangul_pair_decompose(uint32_t code, uint32_t *a, uint32_t *b)
{
 int si = code - SBASE;

 if (si < 0 || si >= SCOUNT)
  return 0;

 if (si % TCOUNT) {

  *a = SBASE + (si / TCOUNT) * TCOUNT;
  *b = TBASE + (si % TCOUNT);
  return 3;
 } else {

  *a = LBASE + (si / NCOUNT);
  *b = VBASE + (si % NCOUNT) / TCOUNT;
  return 2;
 }
}
