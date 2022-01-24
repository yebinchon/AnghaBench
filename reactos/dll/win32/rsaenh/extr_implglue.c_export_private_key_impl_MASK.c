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
struct TYPE_4__ {int /*<<< orphan*/  e; int /*<<< orphan*/  d; int /*<<< orphan*/  qP; int /*<<< orphan*/  dQ; int /*<<< orphan*/  dP; int /*<<< orphan*/  q; int /*<<< orphan*/  p; int /*<<< orphan*/  N; } ;
struct TYPE_5__ {TYPE_1__ rsa; } ;
typedef  TYPE_2__ KEY_CONTEXT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

BOOL FUNC5(BYTE *pbDest, const KEY_CONTEXT *pKeyContext, DWORD dwKeyLen,
                             DWORD *pdwPubExp)
{
    FUNC2(&pKeyContext->rsa.N, pbDest);
    FUNC4(pbDest, FUNC3(&pKeyContext->rsa.N));
    if (FUNC3(&pKeyContext->rsa.N) < dwKeyLen)
        FUNC0(pbDest + FUNC3(&pKeyContext->rsa.N), 0,
               dwKeyLen - FUNC3(&pKeyContext->rsa.N));
    pbDest += dwKeyLen;
    FUNC2(&pKeyContext->rsa.p, pbDest);
    FUNC4(pbDest, FUNC3(&pKeyContext->rsa.p));
    if (FUNC3(&pKeyContext->rsa.p) < (dwKeyLen+1)>>1)
        FUNC0(pbDest + FUNC3(&pKeyContext->rsa.p), 0,
               ((dwKeyLen+1)>>1) - FUNC3(&pKeyContext->rsa.p));
    pbDest += (dwKeyLen+1)>>1;
    FUNC2(&pKeyContext->rsa.q, pbDest);
    FUNC4(pbDest, FUNC3(&pKeyContext->rsa.q));
    if (FUNC3(&pKeyContext->rsa.q) < (dwKeyLen+1)>>1)
        FUNC0(pbDest + FUNC3(&pKeyContext->rsa.q), 0,
               ((dwKeyLen+1)>>1) - FUNC3(&pKeyContext->rsa.q));
    pbDest += (dwKeyLen+1)>>1;
    FUNC2(&pKeyContext->rsa.dP, pbDest);
    FUNC4(pbDest, FUNC3(&pKeyContext->rsa.dP));
    if (FUNC3(&pKeyContext->rsa.dP) < (dwKeyLen+1)>>1)
        FUNC0(pbDest + FUNC3(&pKeyContext->rsa.dP), 0,
               ((dwKeyLen+1)>>1) - FUNC3(&pKeyContext->rsa.dP));
    pbDest += (dwKeyLen+1)>>1;
    FUNC2(&pKeyContext->rsa.dQ, pbDest);
    FUNC4(pbDest, FUNC3(&pKeyContext->rsa.dQ));
    if (FUNC3(&pKeyContext->rsa.dQ) < (dwKeyLen+1)>>1)
        FUNC0(pbDest + FUNC3(&pKeyContext->rsa.dQ), 0,
               ((dwKeyLen+1)>>1) - FUNC3(&pKeyContext->rsa.dQ));
    pbDest += (dwKeyLen+1)>>1;
    FUNC2(&pKeyContext->rsa.qP, pbDest);
    FUNC4(pbDest, FUNC3(&pKeyContext->rsa.qP));
    if (FUNC3(&pKeyContext->rsa.qP) < (dwKeyLen+1)>>1)
        FUNC0(pbDest + FUNC3(&pKeyContext->rsa.qP), 0,
               ((dwKeyLen+1)>>1) - FUNC3(&pKeyContext->rsa.qP));
    pbDest += (dwKeyLen+1)>>1;
    FUNC2(&pKeyContext->rsa.d, pbDest);
    FUNC4(pbDest, FUNC3(&pKeyContext->rsa.d));
    if (FUNC3(&pKeyContext->rsa.d) < dwKeyLen)
        FUNC0(pbDest + FUNC3(&pKeyContext->rsa.d), 0,
               dwKeyLen - FUNC3(&pKeyContext->rsa.d));
    *pdwPubExp = (DWORD)FUNC1(&pKeyContext->rsa.e);

    return TRUE;
}