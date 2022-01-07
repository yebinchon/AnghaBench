
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int N; } ;
struct TYPE_4__ {TYPE_2__ rsa; int aes; int des; int des3; int rc2; } ;
typedef TYPE_1__ KEY_CONTEXT ;
typedef int DWORD ;
typedef int const BYTE ;
typedef int BOOL ;
typedef int ALG_ID ;
 int CRYPT_OK ;
 int FALSE ;
 int GetProcessHeap () ;
 int const* HeapAlloc (int ,int ,unsigned long) ;
 int HeapFree (int ,int ,int const*) ;
 int NTE_BAD_ALGID ;
 int NTE_FAIL ;
 int NTE_NO_MEMORY ;
 int SetLastError (int ) ;
 int TRUE ;
 int aes_ecb_decrypt (int const*,int const*,int *) ;
 int aes_ecb_encrypt (int const*,int const*,int *) ;
 int des3_ecb_decrypt (int const*,int const*,int *) ;
 int des3_ecb_encrypt (int const*,int const*,int *) ;
 int des_ecb_decrypt (int const*,int const*,int *) ;
 int des_ecb_encrypt (int const*,int const*,int *) ;
 int memcpy (int const*,int const*,unsigned long) ;
 int mp_count_bits (int *) ;
 int rc2_ecb_decrypt (int const*,int const*,int *) ;
 int rc2_ecb_encrypt (int const*,int const*,int *) ;
 int reverse_bytes (int const*,unsigned long) ;
 int rsa_exptmod (int const*,unsigned long,int const*,unsigned long*,int ,TYPE_2__*) ;

BOOL encrypt_block_impl(ALG_ID aiAlgid, DWORD dwKeySpec, KEY_CONTEXT *pKeyContext, const BYTE *in,
                        BYTE *out, DWORD enc)
{
    unsigned long inlen, outlen;
    BYTE *in_reversed = ((void*)0);

    switch (aiAlgid) {
        case 131:
            if (enc) {
                rc2_ecb_encrypt(in, out, &pKeyContext->rc2);
            } else {
                rc2_ecb_decrypt(in, out, &pKeyContext->rc2);
            }
            break;

        case 138:
        case 137:
            if (enc) {
                des3_ecb_encrypt(in, out, &pKeyContext->des3);
            } else {
                des3_ecb_decrypt(in, out, &pKeyContext->des3);
            }
            break;

        case 132:
            if (enc) {
                des_ecb_encrypt(in, out, &pKeyContext->des);
            } else {
                des_ecb_decrypt(in, out, &pKeyContext->des);
            }
            break;

        case 136:
        case 135:
        case 134:
        case 133:
            if (enc) {
                aes_ecb_encrypt(in, out, &pKeyContext->aes);
            } else {
                aes_ecb_decrypt(in, out, &pKeyContext->aes);
            }
            break;

        case 130:
        case 129:
        case 128:
            outlen = inlen = (mp_count_bits(&pKeyContext->rsa.N)+7)/8;
            if (enc) {
                if (rsa_exptmod(in, inlen, out, &outlen, dwKeySpec, &pKeyContext->rsa) != CRYPT_OK) {
                    SetLastError(NTE_FAIL);
                    return FALSE;
                }
                reverse_bytes(out, outlen);
            } else {
                in_reversed = HeapAlloc(GetProcessHeap(), 0, inlen);
                if (!in_reversed) {
                    SetLastError(NTE_NO_MEMORY);
                    return FALSE;
                }
                memcpy(in_reversed, in, inlen);
                reverse_bytes(in_reversed, inlen);
                if (rsa_exptmod(in_reversed, inlen, out, &outlen, dwKeySpec, &pKeyContext->rsa) != CRYPT_OK) {
                    HeapFree(GetProcessHeap(), 0, in_reversed);
                    SetLastError(NTE_FAIL);
                    return FALSE;
                }
                HeapFree(GetProcessHeap(), 0, in_reversed);
            }
            break;

        default:
            SetLastError(NTE_BAD_ALGID);
            return FALSE;
    }

    return TRUE;
}
