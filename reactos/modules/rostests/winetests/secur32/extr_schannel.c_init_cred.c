
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dwFlags; scalar_t__ dwSessionLifespan; scalar_t__ dwMaximumCipherStrength; scalar_t__ dwMinimumCipherStrength; scalar_t__ grbitEnabledProtocols; int * palgSupportedAlgs; scalar_t__ cSupportedAlgs; int * aphMappers; scalar_t__ cMappers; int * hRootStore; scalar_t__ paCred; scalar_t__ cCreds; int dwVersion; } ;
typedef TYPE_1__ SCHANNEL_CRED ;


 int SCHANNEL_CRED_VERSION ;

__attribute__((used)) static void init_cred(SCHANNEL_CRED *cred)
{
    cred->dwVersion = SCHANNEL_CRED_VERSION;
    cred->cCreds = 0;
    cred->paCred = 0;
    cred->hRootStore = ((void*)0);
    cred->cMappers = 0;
    cred->aphMappers = ((void*)0);
    cred->cSupportedAlgs = 0;
    cred->palgSupportedAlgs = ((void*)0);
    cred->grbitEnabledProtocols = 0;
    cred->dwMinimumCipherStrength = 0;
    cred->dwMaximumCipherStrength = 0;
    cred->dwSessionLifespan = 0;
    cred->dwFlags = 0;
}
