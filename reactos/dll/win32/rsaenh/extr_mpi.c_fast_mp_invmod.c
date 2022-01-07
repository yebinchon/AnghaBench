
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_1__ ;


struct TYPE_38__ {int sign; } ;
typedef TYPE_1__ mp_int ;


 scalar_t__ MP_EQ ;
 scalar_t__ MP_LT ;
 scalar_t__ MP_NEG ;
 int MP_OKAY ;
 int MP_VAL ;
 int mp_abs (TYPE_1__ const*,TYPE_1__*) ;
 int mp_add (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int mp_clear_multi (TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,int *) ;
 scalar_t__ mp_cmp (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ mp_cmp_d (TYPE_1__*,int) ;
 int mp_copy (TYPE_1__*,TYPE_1__*) ;
 int mp_div_2 (TYPE_1__*,TYPE_1__*) ;
 int mp_exch (TYPE_1__*,TYPE_1__*) ;
 int mp_init_multi (TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,int *) ;
 int mp_iseven (TYPE_1__*) ;
 int mp_isodd (TYPE_1__*) ;
 scalar_t__ mp_iszero (TYPE_1__*) ;
 int mp_set (TYPE_1__*,int) ;
 int mp_sub (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int
fast_mp_invmod (const mp_int * a, mp_int * b, mp_int * c)
{
  mp_int x, y, u, v, B, D;
  int res, neg;


  if (mp_iseven (b) == 1) {
    return MP_VAL;
  }


  if ((res = mp_init_multi(&x, &y, &u, &v, &B, &D, ((void*)0))) != MP_OKAY) {
     return res;
  }


  if ((res = mp_copy (b, &x)) != MP_OKAY) {
    goto __ERR;
  }


  if ((res = mp_abs (a, &y)) != MP_OKAY) {
    goto __ERR;
  }


  if ((res = mp_copy (&x, &u)) != MP_OKAY) {
    goto __ERR;
  }
  if ((res = mp_copy (&y, &v)) != MP_OKAY) {
    goto __ERR;
  }
  mp_set (&D, 1);

top:

  while (mp_iseven (&u) == 1) {

    if ((res = mp_div_2 (&u, &u)) != MP_OKAY) {
      goto __ERR;
    }

    if (mp_isodd (&B) == 1) {
      if ((res = mp_sub (&B, &x, &B)) != MP_OKAY) {
        goto __ERR;
      }
    }

    if ((res = mp_div_2 (&B, &B)) != MP_OKAY) {
      goto __ERR;
    }
  }


  while (mp_iseven (&v) == 1) {

    if ((res = mp_div_2 (&v, &v)) != MP_OKAY) {
      goto __ERR;
    }

    if (mp_isodd (&D) == 1) {

      if ((res = mp_sub (&D, &x, &D)) != MP_OKAY) {
        goto __ERR;
      }
    }

    if ((res = mp_div_2 (&D, &D)) != MP_OKAY) {
      goto __ERR;
    }
  }


  if (mp_cmp (&u, &v) != MP_LT) {

    if ((res = mp_sub (&u, &v, &u)) != MP_OKAY) {
      goto __ERR;
    }

    if ((res = mp_sub (&B, &D, &B)) != MP_OKAY) {
      goto __ERR;
    }
  } else {

    if ((res = mp_sub (&v, &u, &v)) != MP_OKAY) {
      goto __ERR;
    }

    if ((res = mp_sub (&D, &B, &D)) != MP_OKAY) {
      goto __ERR;
    }
  }


  if (mp_iszero (&u) == 0) {
    goto top;
  }




  if (mp_cmp_d (&v, 1) != MP_EQ) {
    res = MP_VAL;
    goto __ERR;
  }


  neg = a->sign;
  while (D.sign == MP_NEG) {
    if ((res = mp_add (&D, b, &D)) != MP_OKAY) {
      goto __ERR;
    }
  }
  mp_exch (&D, c);
  c->sign = neg;
  res = MP_OKAY;

__ERR:mp_clear_multi (&x, &y, &u, &v, &B, &D, ((void*)0));
  return res;
}
