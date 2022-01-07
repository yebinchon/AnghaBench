
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int used; int * dp; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 int MIN (int,int) ;
 int MP_MEM ;
 int MP_OKAY ;
 int mp_add (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int mp_clamp (TYPE_1__*) ;
 int mp_clear (TYPE_1__*) ;
 int mp_init_size (TYPE_1__*,int) ;
 int mp_lshd (TYPE_1__*,int) ;
 int mp_mul (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int mp_sub (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;

int mp_karatsuba_mul (const mp_int * a, const mp_int * b, mp_int * c)
{
  mp_int x0, x1, y0, y1, t1, x0y0, x1y1;
  int B, err;


  err = MP_MEM;


  B = MIN (a->used, b->used);


  B = B >> 1;


  if (mp_init_size (&x0, B) != MP_OKAY)
    goto ERR;
  if (mp_init_size (&x1, a->used - B) != MP_OKAY)
    goto X0;
  if (mp_init_size (&y0, B) != MP_OKAY)
    goto X1;
  if (mp_init_size (&y1, b->used - B) != MP_OKAY)
    goto Y0;


  if (mp_init_size (&t1, B * 2) != MP_OKAY)
    goto Y1;
  if (mp_init_size (&x0y0, B * 2) != MP_OKAY)
    goto T1;
  if (mp_init_size (&x1y1, B * 2) != MP_OKAY)
    goto X0Y0;


  x0.used = y0.used = B;
  x1.used = a->used - B;
  y1.used = b->used - B;

  {
    register int x;
    register mp_digit *tmpa, *tmpb, *tmpx, *tmpy;




    tmpa = a->dp;
    tmpb = b->dp;

    tmpx = x0.dp;
    tmpy = y0.dp;
    for (x = 0; x < B; x++) {
      *tmpx++ = *tmpa++;
      *tmpy++ = *tmpb++;
    }

    tmpx = x1.dp;
    for (x = B; x < a->used; x++) {
      *tmpx++ = *tmpa++;
    }

    tmpy = y1.dp;
    for (x = B; x < b->used; x++) {
      *tmpy++ = *tmpb++;
    }
  }




  mp_clamp (&x0);
  mp_clamp (&y0);



  if (mp_mul (&x0, &y0, &x0y0) != MP_OKAY)
    goto X1Y1;
  if (mp_mul (&x1, &y1, &x1y1) != MP_OKAY)
    goto X1Y1;


  if (mp_sub (&x1, &x0, &t1) != MP_OKAY)
    goto X1Y1;
  if (mp_sub (&y1, &y0, &x0) != MP_OKAY)
    goto X1Y1;
  if (mp_mul (&t1, &x0, &t1) != MP_OKAY)
    goto X1Y1;


  if (mp_add (&x0y0, &x1y1, &x0) != MP_OKAY)
    goto X1Y1;
  if (mp_sub (&x0, &t1, &t1) != MP_OKAY)
    goto X1Y1;


  if (mp_lshd (&t1, B) != MP_OKAY)
    goto X1Y1;
  if (mp_lshd (&x1y1, B * 2) != MP_OKAY)
    goto X1Y1;

  if (mp_add (&x0y0, &t1, &t1) != MP_OKAY)
    goto X1Y1;
  if (mp_add (&t1, &x1y1, c) != MP_OKAY)
    goto X1Y1;


  err = MP_OKAY;

X1Y1:mp_clear (&x1y1);
X0Y0:mp_clear (&x0y0);
T1:mp_clear (&t1);
Y1:mp_clear (&y1);
Y0:mp_clear (&y0);
X1:mp_clear (&x1);
X0:mp_clear (&x0);
ERR:
  return err;
}
