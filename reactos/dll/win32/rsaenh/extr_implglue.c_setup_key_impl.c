
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int aes; int des; int des3; int rc2; int rc4; } ;
typedef TYPE_1__ KEY_CONTEXT ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;
typedef int ALG_ID ;
 int TRUE ;
 int aes_setup (int *,int,int ,int *) ;
 int des3_setup (int *,int,int ,int *) ;
 int des_setup (int *,int,int ,int *) ;
 int memcpy (int *,int *,int) ;
 int rc2_setup (int *,int,int,int ,int *) ;
 int rc4_add_entropy (int *,int,int *) ;
 int rc4_ready (int *) ;
 int rc4_start (int *) ;

BOOL setup_key_impl(ALG_ID aiAlgid, KEY_CONTEXT *pKeyContext, DWORD dwKeyLen,
                    DWORD dwEffectiveKeyLen, DWORD dwSaltLen, BYTE *abKeyValue)
{
    switch (aiAlgid)
    {
        case 128:
            rc4_start(&pKeyContext->rc4);
            rc4_add_entropy(abKeyValue, dwKeyLen + dwSaltLen, &pKeyContext->rc4);
            rc4_ready(&pKeyContext->rc4);
            break;

        case 129:
            rc2_setup(abKeyValue, dwKeyLen + dwSaltLen, dwEffectiveKeyLen ?
                      dwEffectiveKeyLen : dwKeyLen << 3, 0, &pKeyContext->rc2);
            break;

        case 136:
            des3_setup(abKeyValue, 24, 0, &pKeyContext->des3);
            break;

        case 135:
            memcpy(abKeyValue+16, abKeyValue, 8);
            des3_setup(abKeyValue, 24, 0, &pKeyContext->des3);
            break;

        case 130:
            des_setup(abKeyValue, 8, 0, &pKeyContext->des);
            break;

        case 134:
        case 133:
            aes_setup(abKeyValue, 16, 0, &pKeyContext->aes);
            break;

        case 132:
            aes_setup(abKeyValue, 24, 0, &pKeyContext->aes);
            break;

        case 131:
            aes_setup(abKeyValue, 32, 0, &pKeyContext->aes);
            break;
    }

    return TRUE;
}
