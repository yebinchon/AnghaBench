
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int q; int p; int qP; int dP; int dQ; int N; int d; int e; } ;
typedef TYPE_1__ rsa_key ;


 int mp_clear_multi (int *,int *,int *,int *,int *,int *,int *,int *,int *) ;

void rsa_free(rsa_key *key)
{
   mp_clear_multi(&key->e, &key->d, &key->N, &key->dQ, &key->dP,
                  &key->qP, &key->p, &key->q, ((void*)0));
}
