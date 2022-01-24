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
struct TYPE_4__ {int /*<<< orphan*/  e; int /*<<< orphan*/  N; } ;
struct TYPE_5__ {TYPE_1__ rsa; } ;
typedef  TYPE_2__ KEY_CONTEXT ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

BOOL FUNC5(BYTE *pbDest, const KEY_CONTEXT *pKeyContext, DWORD dwKeyLen,DWORD *pdwPubExp)
{
    FUNC2(&pKeyContext->rsa.N, pbDest);
    FUNC4(pbDest, FUNC3(&pKeyContext->rsa.N));
    if (FUNC3(&pKeyContext->rsa.N) < dwKeyLen)
        FUNC0(pbDest + FUNC3(&pKeyContext->rsa.N), 0,
               dwKeyLen - FUNC3(&pKeyContext->rsa.N));
    *pdwPubExp = (DWORD)FUNC1(&pKeyContext->rsa.e);
    return TRUE;
}