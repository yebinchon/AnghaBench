
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_1__ ;


struct TYPE_34__ {int used; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 int DIGIT_BIT ;
 scalar_t__ MP_LT ;
 int MP_OKAY ;
 int mp_add (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int mp_clear (TYPE_1__*) ;
 scalar_t__ mp_cmp (TYPE_1__*,TYPE_1__ const*) ;
 scalar_t__ mp_cmp_d (TYPE_1__*,int ) ;
 int mp_init_copy (TYPE_1__*,TYPE_1__*) ;
 int mp_lshd (TYPE_1__*,int) ;
 int mp_mod_2d (TYPE_1__*,int,TYPE_1__*) ;
 int mp_mul (TYPE_1__*,TYPE_1__ const*,TYPE_1__*) ;
 int mp_rshd (TYPE_1__*,int) ;
 int mp_set (TYPE_1__*,int) ;
 int mp_sub (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int s_mp_mul_digs (TYPE_1__*,TYPE_1__ const*,TYPE_1__*,int) ;
 int s_mp_mul_high_digs (TYPE_1__*,TYPE_1__ const*,TYPE_1__*,int) ;
 int s_mp_sub (TYPE_1__*,TYPE_1__ const*,TYPE_1__*) ;

int
mp_reduce (mp_int * x, const mp_int * m, const mp_int * mu)
{
  mp_int q;
  int res, um = m->used;


  if ((res = mp_init_copy (&q, x)) != MP_OKAY) {
    return res;
  }


  mp_rshd (&q, um - 1);


  if (((unsigned long) um) > (((mp_digit)1) << (DIGIT_BIT - 1))) {
    if ((res = mp_mul (&q, mu, &q)) != MP_OKAY) {
      goto CLEANUP;
    }
  } else {
    if ((res = s_mp_mul_high_digs (&q, mu, &q, um - 1)) != MP_OKAY) {
      goto CLEANUP;
    }
  }


  mp_rshd (&q, um + 1);


  if ((res = mp_mod_2d (x, DIGIT_BIT * (um + 1), x)) != MP_OKAY) {
    goto CLEANUP;
  }


  if ((res = s_mp_mul_digs (&q, m, &q, um + 1)) != MP_OKAY) {
    goto CLEANUP;
  }


  if ((res = mp_sub (x, &q, x)) != MP_OKAY) {
    goto CLEANUP;
  }


  if (mp_cmp_d (x, 0) == MP_LT) {
    mp_set (&q, 1);
    if ((res = mp_lshd (&q, um + 1)) != MP_OKAY)
      goto CLEANUP;
    if ((res = mp_add (x, &q, x)) != MP_OKAY)
      goto CLEANUP;
  }


  while (mp_cmp (x, m) != MP_LT) {
    if ((res = s_mp_sub (x, m, x)) != MP_OKAY) {
      goto CLEANUP;
    }
  }

CLEANUP:
  mp_clear (&q);

  return res;
}
