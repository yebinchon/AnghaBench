
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int used; int * dp; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 int MP_MEM ;
 int MP_OKAY ;
 int mp_add (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int mp_clamp (TYPE_1__*) ;
 int mp_clear (TYPE_1__*) ;
 int mp_init_size (TYPE_1__*,int) ;
 int mp_lshd (TYPE_1__*,int) ;
 int mp_sqr (TYPE_1__*,TYPE_1__*) ;
 int mp_sub (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int s_mp_add (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;

int mp_karatsuba_sqr (const mp_int * a, mp_int * b)
{
  mp_int x0, x1, t1, t2, x0x0, x1x1;
  int B, err;

  err = MP_MEM;


  B = a->used;


  B = B >> 1;


  if (mp_init_size (&x0, B) != MP_OKAY)
    goto ERR;
  if (mp_init_size (&x1, a->used - B) != MP_OKAY)
    goto X0;


  if (mp_init_size (&t1, a->used * 2) != MP_OKAY)
    goto X1;
  if (mp_init_size (&t2, a->used * 2) != MP_OKAY)
    goto T1;
  if (mp_init_size (&x0x0, B * 2) != MP_OKAY)
    goto T2;
  if (mp_init_size (&x1x1, (a->used - B) * 2) != MP_OKAY)
    goto X0X0;

  {
    register int x;
    register mp_digit *dst, *src;

    src = a->dp;


    dst = x0.dp;
    for (x = 0; x < B; x++) {
      *dst++ = *src++;
    }

    dst = x1.dp;
    for (x = B; x < a->used; x++) {
      *dst++ = *src++;
    }
  }

  x0.used = B;
  x1.used = a->used - B;

  mp_clamp (&x0);


  if (mp_sqr (&x0, &x0x0) != MP_OKAY)
    goto X1X1;
  if (mp_sqr (&x1, &x1x1) != MP_OKAY)
    goto X1X1;


  if (mp_sub (&x1, &x0, &t1) != MP_OKAY)
    goto X1X1;
  if (mp_sqr (&t1, &t1) != MP_OKAY)
    goto X1X1;


  if (s_mp_add (&x0x0, &x1x1, &t2) != MP_OKAY)
    goto X1X1;
  if (mp_sub (&t2, &t1, &t1) != MP_OKAY)
    goto X1X1;


  if (mp_lshd (&t1, B) != MP_OKAY)
    goto X1X1;
  if (mp_lshd (&x1x1, B * 2) != MP_OKAY)
    goto X1X1;

  if (mp_add (&x0x0, &t1, &t1) != MP_OKAY)
    goto X1X1;
  if (mp_add (&t1, &x1x1, b) != MP_OKAY)
    goto X1X1;

  err = MP_OKAY;

X1X1:mp_clear (&x1x1);
X0X0:mp_clear (&x0x0);
T2:mp_clear (&t2);
T1:mp_clear (&t1);
X1:mp_clear (&x1);
X0:mp_clear (&x0);
ERR:
  return err;
}
