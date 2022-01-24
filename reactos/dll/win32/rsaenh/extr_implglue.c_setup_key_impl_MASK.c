#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  aes; int /*<<< orphan*/  des; int /*<<< orphan*/  des3; int /*<<< orphan*/  rc2; int /*<<< orphan*/  rc4; } ;
typedef  TYPE_1__ KEY_CONTEXT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  int ALG_ID ;

/* Variables and functions */
#define  CALG_3DES 136 
#define  CALG_3DES_112 135 
#define  CALG_AES 134 
#define  CALG_AES_128 133 
#define  CALG_AES_192 132 
#define  CALG_AES_256 131 
#define  CALG_DES 130 
#define  CALG_RC2 129 
#define  CALG_RC4 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

BOOL FUNC8(ALG_ID aiAlgid, KEY_CONTEXT *pKeyContext, DWORD dwKeyLen,
                    DWORD dwEffectiveKeyLen, DWORD dwSaltLen, BYTE *abKeyValue)
{
    switch (aiAlgid) 
    {
        case CALG_RC4:
            FUNC7(&pKeyContext->rc4);
            FUNC5(abKeyValue, dwKeyLen + dwSaltLen, &pKeyContext->rc4);
            FUNC6(&pKeyContext->rc4);
            break;
        
        case CALG_RC2:
            FUNC4(abKeyValue, dwKeyLen + dwSaltLen, dwEffectiveKeyLen ?
                      dwEffectiveKeyLen : dwKeyLen << 3, 0, &pKeyContext->rc2);
            break;
        
        case CALG_3DES:
            FUNC1(abKeyValue, 24, 0, &pKeyContext->des3);
            break;

        case CALG_3DES_112:
            FUNC3(abKeyValue+16, abKeyValue, 8);
            FUNC1(abKeyValue, 24, 0, &pKeyContext->des3);
            break;
        
        case CALG_DES:
            FUNC2(abKeyValue, 8, 0, &pKeyContext->des);
            break;

        case CALG_AES:
        case CALG_AES_128:
            FUNC0(abKeyValue, 16, 0, &pKeyContext->aes);
            break;

        case CALG_AES_192:
            FUNC0(abKeyValue, 24, 0, &pKeyContext->aes);
            break;

        case CALG_AES_256:
            FUNC0(abKeyValue, 32, 0, &pKeyContext->aes);
            break;
    }

    return TRUE;
}