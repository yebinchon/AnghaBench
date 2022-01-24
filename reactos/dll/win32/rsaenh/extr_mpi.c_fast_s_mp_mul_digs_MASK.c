#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int mp_word ;
struct TYPE_7__ {int alloc; int used; int* dp; } ;
typedef  TYPE_1__ mp_int ;
typedef  int mp_digit ;

/* Variables and functions */
 scalar_t__ DIGIT_BIT ; 
 int FUNC0 (int,int) ; 
 int MP_MASK ; 
 int MP_OKAY ; 
 int MP_WARRAY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC3 (const mp_int * a, const mp_int * b, mp_int * c, int digs)
{
  int     olduse, res, pa, ix, iz;
  mp_digit W[MP_WARRAY];
  register mp_word  _W;

  /* grow the destination as required */
  if (c->alloc < digs) {
    if ((res = FUNC2 (c, digs)) != MP_OKAY) {
      return res;
    }
  }

  /* number of output digits to produce */
  pa = FUNC0(digs, a->used + b->used);

  /* clear the carry */
  _W = 0;
  for (ix = 0; ix <= pa; ix++) { 
      int      tx, ty;
      int      iy;
      mp_digit *tmpx, *tmpy;

      /* get offsets into the two bignums */
      ty = FUNC0(b->used-1, ix);
      tx = ix - ty;

      /* setup temp aliases */
      tmpx = a->dp + tx;
      tmpy = b->dp + ty;

      /* This is the number of times the loop will iterate, essentially it's
         while (tx++ < a->used && ty-- >= 0) { ... }
       */
      iy = FUNC0(a->used-tx, ty+1);

      /* execute loop */
      for (iz = 0; iz < iy; ++iz) {
         _W += ((mp_word)*tmpx++)*((mp_word)*tmpy--);
      }

      /* store term */
      W[ix] = ((mp_digit)_W) & MP_MASK;

      /* make next carry */
      _W = _W >> ((mp_word)DIGIT_BIT);
  }

  /* setup dest */
  olduse  = c->used;
  c->used = digs;

  {
    register mp_digit *tmpc;
    tmpc = c->dp;
    for (ix = 0; ix < digs; ix++) {
      /* now extract the previous digit [below the carry] */
      *tmpc++ = W[ix];
    }

    /* clear unused digits [that existed in the old copy of c] */
    for (; ix < olduse; ix++) {
      *tmpc++ = 0;
    }
  }
  FUNC1 (c);
  return MP_OKAY;
}