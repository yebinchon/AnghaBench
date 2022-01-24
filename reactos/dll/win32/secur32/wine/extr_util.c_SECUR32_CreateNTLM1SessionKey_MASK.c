#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  digest; } ;
typedef  int /*<<< orphan*/  SECURITY_STATUS ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  TYPE_1__ MD4_CTX ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SEC_E_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

SECURITY_STATUS FUNC5(PBYTE password, int len, PBYTE session_key)
{
    MD4_CTX ctx;
    BYTE ntlm_hash[16];

    FUNC3("(%p, %p)\n", password, session_key);

    FUNC1(&ctx);
    FUNC2(&ctx, password, len);
    FUNC0(&ctx);

    FUNC4(ntlm_hash, ctx.digest, 0x10);

    FUNC1(&ctx);
    FUNC2(&ctx, ntlm_hash, 0x10u);
    FUNC0(&ctx);

    FUNC4(session_key, ctx.digest, 0x10);

    return SEC_E_OK;
}