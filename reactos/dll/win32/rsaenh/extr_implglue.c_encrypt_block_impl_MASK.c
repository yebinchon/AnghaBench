#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  N; } ;
struct TYPE_4__ {TYPE_2__ rsa; int /*<<< orphan*/  aes; int /*<<< orphan*/  des; int /*<<< orphan*/  des3; int /*<<< orphan*/  rc2; } ;
typedef  TYPE_1__ KEY_CONTEXT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  const BYTE ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  int ALG_ID ;

/* Variables and functions */
#define  CALG_3DES 138 
#define  CALG_3DES_112 137 
#define  CALG_AES 136 
#define  CALG_AES_128 135 
#define  CALG_AES_192 134 
#define  CALG_AES_256 133 
#define  CALG_DES 132 
#define  CALG_RC2 131 
#define  CALG_RSA_KEYX 130 
#define  CALG_RSA_SIGN 129 
#define  CALG_SSL3_SHAMD5 128 
 int /*<<< orphan*/  CRYPT_OK ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  NTE_BAD_ALGID ; 
 int /*<<< orphan*/  NTE_FAIL ; 
 int /*<<< orphan*/  NTE_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const*,unsigned long,int /*<<< orphan*/  const*,unsigned long*,int /*<<< orphan*/ ,TYPE_2__*) ; 

BOOL FUNC16(ALG_ID aiAlgid, DWORD dwKeySpec, KEY_CONTEXT *pKeyContext, const BYTE *in,
                        BYTE *out, DWORD enc)
{
    unsigned long inlen, outlen;
    BYTE *in_reversed = NULL;
        
    switch (aiAlgid) {
        case CALG_RC2:
            if (enc) {
                FUNC13(in, out, &pKeyContext->rc2);
            } else {
                FUNC12(in, out, &pKeyContext->rc2);
            }
            break;

        case CALG_3DES:
        case CALG_3DES_112:
            if (enc) {
                FUNC7(in, out, &pKeyContext->des3);
            } else {
                FUNC6(in, out, &pKeyContext->des3);
            }
            break;

        case CALG_DES:
            if (enc) {
                FUNC9(in, out, &pKeyContext->des);
            } else {
                FUNC8(in, out, &pKeyContext->des);
            }
            break;

        case CALG_AES:
        case CALG_AES_128:
        case CALG_AES_192:
        case CALG_AES_256:
            if (enc) {
                FUNC5(in, out, &pKeyContext->aes);
            } else {
                FUNC4(in, out, &pKeyContext->aes);
            }
            break;

        case CALG_RSA_KEYX:
        case CALG_RSA_SIGN:
        case CALG_SSL3_SHAMD5:
            outlen = inlen = (FUNC11(&pKeyContext->rsa.N)+7)/8;
            if (enc) {
                if (FUNC15(in, inlen, out, &outlen, dwKeySpec, &pKeyContext->rsa) != CRYPT_OK) {
                    FUNC3(NTE_FAIL);
                    return FALSE;
                }
                FUNC14(out, outlen);
            } else {
                in_reversed = FUNC1(FUNC0(), 0, inlen);
                if (!in_reversed) {
                    FUNC3(NTE_NO_MEMORY);
                    return FALSE;
                }
                FUNC10(in_reversed, in, inlen);
                FUNC14(in_reversed, inlen);
                if (FUNC15(in_reversed, inlen, out, &outlen, dwKeySpec, &pKeyContext->rsa) != CRYPT_OK) {
                    FUNC2(FUNC0(), 0, in_reversed);
                    FUNC3(NTE_FAIL);
                    return FALSE;
                }
                FUNC2(FUNC0(), 0, in_reversed);
            }
            break;

        default:
            FUNC3(NTE_BAD_ALGID);
            return FALSE;
    }

    return TRUE;
}