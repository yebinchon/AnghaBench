
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int digest; } ;
typedef int PBYTE ;
typedef TYPE_1__ MD5_CTX ;
typedef unsigned char BYTE ;


 int MD5Final (TYPE_1__*) ;
 int MD5Init (TYPE_1__*) ;
 int MD5Update (TYPE_1__*,unsigned char const*,int) ;
 int lstrlenA (char const*) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void SECUR32_CalcNTLM2Subkey(const BYTE *session_key, const char *magic, PBYTE subkey)
{
    MD5_CTX ctx;

    MD5Init(&ctx);
    MD5Update(&ctx, session_key, 16);
    MD5Update(&ctx, (const unsigned char*)magic, lstrlenA(magic)+1);
    MD5Final(&ctx);
    memcpy(subkey, ctx.digest, 16);
}
