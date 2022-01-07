
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_1__ ;


struct TYPE_42__ {scalar_t__ sign; } ;
typedef TYPE_1__ const mp_int ;


 scalar_t__ MP_EQ ;
 scalar_t__ MP_LT ;
 scalar_t__ MP_NEG ;
 int MP_OKAY ;
 int MP_VAL ;
 int mp_add (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ;
 int mp_clear_multi (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int *) ;
 scalar_t__ mp_cmp (TYPE_1__ const*,TYPE_1__ const*) ;
 scalar_t__ mp_cmp_d (TYPE_1__ const*,int) ;
 scalar_t__ mp_cmp_mag (TYPE_1__ const*,TYPE_1__ const*) ;
 int mp_copy (TYPE_1__ const*,TYPE_1__ const*) ;
 int mp_div_2 (TYPE_1__ const*,TYPE_1__ const*) ;
 int mp_exch (TYPE_1__ const*,TYPE_1__ const*) ;
 int mp_init_multi (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int *) ;
 int mp_iseven (TYPE_1__ const*) ;
 int mp_isodd (TYPE_1__ const*) ;
 scalar_t__ mp_iszero (TYPE_1__ const*) ;
 int mp_set (TYPE_1__ const*,int) ;
 int mp_sub (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ;

int mp_invmod_slow (const mp_int * a, mp_int * b, mp_int * c)
{
  mp_int x, y, u, v, A, B, C, D;
  int res;


  if (b->sign == MP_NEG || mp_iszero(b) == 1) {
    return MP_VAL;
  }


  if ((res = mp_init_multi(&x, &y, &u, &v,
                           &A, &B, &C, &D, ((void*)0))) != MP_OKAY) {
     return res;
  }


  if ((res = mp_copy (a, &x)) != MP_OKAY) {
    goto __ERR;
  }
  if ((res = mp_copy (b, &y)) != MP_OKAY) {
    goto __ERR;
  }


  if (mp_iseven (&x) == 1 && mp_iseven (&y) == 1) {
    res = MP_VAL;
    goto __ERR;
  }


  if ((res = mp_copy (&x, &u)) != MP_OKAY) {
    goto __ERR;
  }
  if ((res = mp_copy (&y, &v)) != MP_OKAY) {
    goto __ERR;
  }
  mp_set (&A, 1);
  mp_set (&D, 1);

top:

  while (mp_iseven (&u) == 1) {

    if ((res = mp_div_2 (&u, &u)) != MP_OKAY) {
      goto __ERR;
    }

    if (mp_isodd (&A) == 1 || mp_isodd (&B) == 1) {

      if ((res = mp_add (&A, &y, &A)) != MP_OKAY) {
         goto __ERR;
      }
      if ((res = mp_sub (&B, &x, &B)) != MP_OKAY) {
         goto __ERR;
      }
    }

    if ((res = mp_div_2 (&A, &A)) != MP_OKAY) {
      goto __ERR;
    }
    if ((res = mp_div_2 (&B, &B)) != MP_OKAY) {
      goto __ERR;
    }
  }


  while (mp_iseven (&v) == 1) {

    if ((res = mp_div_2 (&v, &v)) != MP_OKAY) {
      goto __ERR;
    }

    if (mp_isodd (&C) == 1 || mp_isodd (&D) == 1) {

      if ((res = mp_add (&C, &y, &C)) != MP_OKAY) {
         goto __ERR;
      }
      if ((res = mp_sub (&D, &x, &D)) != MP_OKAY) {
         goto __ERR;
      }
    }

    if ((res = mp_div_2 (&C, &C)) != MP_OKAY) {
      goto __ERR;
    }
    if ((res = mp_div_2 (&D, &D)) != MP_OKAY) {
      goto __ERR;
    }
  }


  if (mp_cmp (&u, &v) != MP_LT) {

    if ((res = mp_sub (&u, &v, &u)) != MP_OKAY) {
      goto __ERR;
    }

    if ((res = mp_sub (&A, &C, &A)) != MP_OKAY) {
      goto __ERR;
    }

    if ((res = mp_sub (&B, &D, &B)) != MP_OKAY) {
      goto __ERR;
    }
  } else {

    if ((res = mp_sub (&v, &u, &v)) != MP_OKAY) {
      goto __ERR;
    }

    if ((res = mp_sub (&C, &A, &C)) != MP_OKAY) {
      goto __ERR;
    }

    if ((res = mp_sub (&D, &B, &D)) != MP_OKAY) {
      goto __ERR;
    }
  }


  if (mp_iszero (&u) == 0)
    goto top;




  if (mp_cmp_d (&v, 1) != MP_EQ) {
    res = MP_VAL;
    goto __ERR;
  }


  while (mp_cmp_d(&C, 0) == MP_LT) {
      if ((res = mp_add(&C, b, &C)) != MP_OKAY) {
         goto __ERR;
      }
  }


  while (mp_cmp_mag(&C, b) != MP_LT) {
      if ((res = mp_sub(&C, b, &C)) != MP_OKAY) {
         goto __ERR;
      }
  }


  mp_exch (&C, c);
  res = MP_OKAY;
__ERR:mp_clear_multi (&x, &y, &u, &v, &A, &B, &C, &D, ((void*)0));
  return res;
}
