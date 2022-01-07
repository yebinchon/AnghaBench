
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int digest; } ;
typedef int SECURITY_STATUS ;
typedef int * PBYTE ;
typedef TYPE_1__ MD4_CTX ;
typedef int BYTE ;


 int MD4Final (TYPE_1__*) ;
 int MD4Init (TYPE_1__*) ;
 int MD4Update (TYPE_1__*,int *,int) ;
 int SEC_E_OK ;
 int TRACE (char*,int *,int *) ;
 int memcpy (int *,int ,int) ;

SECURITY_STATUS SECUR32_CreateNTLM1SessionKey(PBYTE password, int len, PBYTE session_key)
{
    MD4_CTX ctx;
    BYTE ntlm_hash[16];

    TRACE("(%p, %p)\n", password, session_key);

    MD4Init(&ctx);
    MD4Update(&ctx, password, len);
    MD4Final(&ctx);

    memcpy(ntlm_hash, ctx.digest, 0x10);

    MD4Init(&ctx);
    MD4Update(&ctx, ntlm_hash, 0x10u);
    MD4Final(&ctx);

    memcpy(session_key, ctx.digest, 0x10);

    return SEC_E_OK;
}
