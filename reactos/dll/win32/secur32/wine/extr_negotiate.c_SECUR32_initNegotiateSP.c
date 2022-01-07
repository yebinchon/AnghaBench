
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int member_1; int member_5; int member_4; int member_3; int member_2; int member_0; } ;
struct TYPE_5__ {int member_1; int member_5; int member_4; int member_3; int member_2; int member_0; } ;
typedef int SecureProvider ;
typedef TYPE_1__ SecPkgInfoW ;
typedef TYPE_2__ SecPkgInfoA ;


 int CAPS ;
 int NEGO_MAX_TOKEN ;
 int RPC_C_AUTHN_GSS_NEGOTIATE ;
 int SECUR32_addPackages (int *,long,TYPE_2__ const*,TYPE_1__ const*) ;
 int * SECUR32_addProvider (int *,int *,int *) ;
 int negoTableA ;
 int negoTableW ;
 int nego_name_A ;
 int nego_name_W ;
 int negotiate_comment_A ;
 int negotiate_comment_W ;

void SECUR32_initNegotiateSP(void)
{
    SecureProvider *provider = SECUR32_addProvider(&negoTableA, &negoTableW, ((void*)0));

    const SecPkgInfoW infoW = {CAPS, 1, RPC_C_AUTHN_GSS_NEGOTIATE, NEGO_MAX_TOKEN,
                               nego_name_W, negotiate_comment_W};
    const SecPkgInfoA infoA = {CAPS, 1, RPC_C_AUTHN_GSS_NEGOTIATE, NEGO_MAX_TOKEN,
                               nego_name_A, negotiate_comment_A};
    SECUR32_addPackages(provider, 1L, &infoA, &infoW);
}
