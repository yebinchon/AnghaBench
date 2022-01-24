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
struct TYPE_4__ {int /*<<< orphan*/  e; int /*<<< orphan*/  N; int /*<<< orphan*/  type; int /*<<< orphan*/  q; int /*<<< orphan*/  p; int /*<<< orphan*/  qP; int /*<<< orphan*/  dP; int /*<<< orphan*/  dQ; int /*<<< orphan*/  d; } ;
struct TYPE_5__ {TYPE_1__ rsa; } ;
typedef  TYPE_2__ KEY_CONTEXT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ MP_OKAY ; 
 int /*<<< orphan*/  NTE_FAIL ; 
 int /*<<< orphan*/  PK_PUBLIC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

BOOL FUNC9(const BYTE *pbSrc, KEY_CONTEXT *pKeyContext, DWORD dwKeyLen,
                            DWORD dwPubExp)
{
    BYTE *pbTemp;

    if (FUNC5(&pKeyContext->rsa.e, &pKeyContext->rsa.d, &pKeyContext->rsa.N, 
                      &pKeyContext->rsa.dQ,&pKeyContext->rsa.dP,&pKeyContext->rsa.qP, 
                      &pKeyContext->rsa.p, &pKeyContext->rsa.q, NULL) != MP_OKAY)
    {
        FUNC3(NTE_FAIL);
        return FALSE;
    }

    pbTemp = FUNC1(FUNC0(), 0, dwKeyLen);
    if (!pbTemp) return FALSE;
    FUNC4(pbTemp, pbSrc, dwKeyLen);
    
    pKeyContext->rsa.type = PK_PUBLIC;
    FUNC8(pbTemp, dwKeyLen);
    FUNC6(&pKeyContext->rsa.N, pbTemp, dwKeyLen);
    FUNC2(FUNC0(), 0, pbTemp);
    FUNC7(&pKeyContext->rsa.e, dwPubExp);

    return TRUE;    
}