#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * PCCRL_CONTEXT ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static DWORD FUNC1(HCERTSTORE store)
{
    PCCRL_CONTEXT crl = NULL;
    DWORD crls = 0;

    do {
        crl = FUNC0(store, crl);
        if (crl)
            crls++;
    } while (crl);
    return crls;
}