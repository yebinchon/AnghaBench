
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong32 ;
struct TYPE_3__ {int ek; } ;
typedef TYPE_1__ des_key ;


 int LOAD32H (int ,unsigned char const*) ;
 int STORE32H (int ,unsigned char*) ;
 int desfunc (int *,int ) ;

void des_ecb_encrypt(const unsigned char *pt, unsigned char *ct, const des_key *des)
{
    ulong32 work[2];
    LOAD32H(work[0], pt+0);
    LOAD32H(work[1], pt+4);
    desfunc(work, des->ek);
    STORE32H(work[0],ct+0);
    STORE32H(work[1],ct+4);
}
