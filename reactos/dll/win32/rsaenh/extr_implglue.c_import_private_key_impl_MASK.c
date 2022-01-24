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
struct TYPE_4__ {int /*<<< orphan*/  e; int /*<<< orphan*/  d; int /*<<< orphan*/  qP; int /*<<< orphan*/  dQ; int /*<<< orphan*/  dP; int /*<<< orphan*/  q; int /*<<< orphan*/  p; int /*<<< orphan*/  N; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {TYPE_1__ rsa; } ;
typedef  TYPE_2__ KEY_CONTEXT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ MP_OKAY ; 
 int /*<<< orphan*/  NTE_FAIL ; 
 int /*<<< orphan*/  PK_PRIVATE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

BOOL FUNC10(const BYTE *pbSrc, KEY_CONTEXT *pKeyContext, DWORD dwKeyLen,
                             DWORD dwDataLen, DWORD dwPubExp)
{
    BYTE *pbTemp, *pbBigNum;

    if (FUNC6(&pKeyContext->rsa.e, &pKeyContext->rsa.d, &pKeyContext->rsa.N, 
                      &pKeyContext->rsa.dQ,&pKeyContext->rsa.dP,&pKeyContext->rsa.qP, 
                      &pKeyContext->rsa.p, &pKeyContext->rsa.q, NULL) != MP_OKAY)
    {
        FUNC3(NTE_FAIL);
        return FALSE;
    }

    pbTemp = FUNC1(FUNC0(), 0, 2*dwKeyLen+5*((dwKeyLen+1)>>1));
    if (!pbTemp) return FALSE;
    FUNC4(pbTemp, pbSrc, FUNC5(dwDataLen, 2*dwKeyLen+5*((dwKeyLen+1)>>1)));
    pbBigNum = pbTemp;

    pKeyContext->rsa.type = PK_PRIVATE;
    FUNC9(pbBigNum, dwKeyLen);
    FUNC7(&pKeyContext->rsa.N, pbBigNum, dwKeyLen);
    pbBigNum += dwKeyLen;
    FUNC9(pbBigNum, (dwKeyLen+1)>>1);
    FUNC7(&pKeyContext->rsa.p, pbBigNum, (dwKeyLen+1)>>1);
    pbBigNum += (dwKeyLen+1)>>1;
    FUNC9(pbBigNum, (dwKeyLen+1)>>1);
    FUNC7(&pKeyContext->rsa.q, pbBigNum, (dwKeyLen+1)>>1);
    pbBigNum += (dwKeyLen+1)>>1;
    FUNC9(pbBigNum, (dwKeyLen+1)>>1);
    FUNC7(&pKeyContext->rsa.dP, pbBigNum, (dwKeyLen+1)>>1);
    pbBigNum += (dwKeyLen+1)>>1;
    FUNC9(pbBigNum, (dwKeyLen+1)>>1);
    FUNC7(&pKeyContext->rsa.dQ, pbBigNum, (dwKeyLen+1)>>1);
    pbBigNum += (dwKeyLen+1)>>1;
    FUNC9(pbBigNum, (dwKeyLen+1)>>1);
    FUNC7(&pKeyContext->rsa.qP, pbBigNum, (dwKeyLen+1)>>1);
    pbBigNum += (dwKeyLen+1)>>1;
    /* The size of the private exponent d is inferred from the remaining
     * data length.
     */
    dwKeyLen = FUNC5(dwKeyLen, dwDataLen - (pbBigNum - pbTemp));
    FUNC9(pbBigNum, dwKeyLen);
    FUNC7(&pKeyContext->rsa.d, pbBigNum, dwKeyLen);
    FUNC8(&pKeyContext->rsa.e, dwPubExp);
    
    FUNC2(FUNC0(), 0, pbTemp);
    return TRUE;
}