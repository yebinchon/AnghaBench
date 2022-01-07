
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_24__ {scalar_t__ sign; } ;
typedef TYPE_1__ mp_int ;


 scalar_t__ MP_NEG ;
 int MP_OKAY ;
 int MP_VAL ;
 int mp_abs (TYPE_1__ const*,TYPE_1__*) ;
 int mp_clear (TYPE_1__*) ;
 int mp_clear_multi (TYPE_1__*,TYPE_1__*,int *) ;
 int mp_exptmod_fast (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__*,TYPE_1__*,int) ;
 int mp_init (TYPE_1__*) ;
 int mp_invmod (TYPE_1__ const*,TYPE_1__*,TYPE_1__*) ;
 int mp_isodd (TYPE_1__*) ;
 int s_mp_exptmod (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__*,TYPE_1__*) ;

int mp_exptmod (const mp_int * G, const mp_int * X, mp_int * P, mp_int * Y)
{
  int dr;


  if (P->sign == MP_NEG) {
     return MP_VAL;
  }


  if (X->sign == MP_NEG) {
     mp_int tmpG, tmpX;
     int err;


     if ((err = mp_init(&tmpG)) != MP_OKAY) {
        return err;
     }
     if ((err = mp_invmod(G, P, &tmpG)) != MP_OKAY) {
        mp_clear(&tmpG);
        return err;
     }


     if ((err = mp_init(&tmpX)) != MP_OKAY) {
        mp_clear(&tmpG);
        return err;
     }
     if ((err = mp_abs(X, &tmpX)) != MP_OKAY) {
        mp_clear_multi(&tmpG, &tmpX, ((void*)0));
        return err;
     }


     err = mp_exptmod(&tmpG, &tmpX, P, Y);
     mp_clear_multi(&tmpG, &tmpX, ((void*)0));
     return err;
  }

  dr = 0;


  if (mp_isodd (P) == 1) {
    return mp_exptmod_fast (G, X, P, Y, dr);
  } else {

    return s_mp_exptmod (G, X, P, Y);
  }
}
