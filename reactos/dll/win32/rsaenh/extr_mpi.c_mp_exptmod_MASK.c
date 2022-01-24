#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {scalar_t__ sign; } ;
typedef  TYPE_1__ mp_int ;

/* Variables and functions */
 scalar_t__ MP_NEG ; 
 int MP_OKAY ; 
 int MP_VAL ; 
 int FUNC0 (TYPE_1__ const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__*,TYPE_1__*,int) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__ const*,TYPE_1__*,TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__*,TYPE_1__*) ; 

int FUNC8 (const mp_int * G, const mp_int * X, mp_int * P, mp_int * Y)
{
  int dr;

  /* modulus P must be positive */
  if (P->sign == MP_NEG) {
     return MP_VAL;
  }

  /* if exponent X is negative we have to recurse */
  if (X->sign == MP_NEG) {
     mp_int tmpG, tmpX;
     int err;

     /* first compute 1/G mod P */
     if ((err = FUNC4(&tmpG)) != MP_OKAY) {
        return err;
     }
     if ((err = FUNC5(G, P, &tmpG)) != MP_OKAY) {
        FUNC1(&tmpG);
        return err;
     }

     /* now get |X| */
     if ((err = FUNC4(&tmpX)) != MP_OKAY) {
        FUNC1(&tmpG);
        return err;
     }
     if ((err = FUNC0(X, &tmpX)) != MP_OKAY) {
        FUNC2(&tmpG, &tmpX, NULL);
        return err;
     }

     /* and now compute (1/G)**|X| instead of G**X [X < 0] */
     err = FUNC8(&tmpG, &tmpX, P, Y);
     FUNC2(&tmpG, &tmpX, NULL);
     return err;
  }

  dr = 0;

  /* if the modulus is odd use the fast method */
  if (FUNC6 (P) == 1) {
    return FUNC3 (G, X, P, Y, dr);
  } else {
    /* otherwise use the generic Barrett reduction technique */
    return FUNC7 (G, X, P, Y);
  }
}