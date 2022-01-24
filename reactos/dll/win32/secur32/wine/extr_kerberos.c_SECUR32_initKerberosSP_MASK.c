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
typedef  int /*<<< orphan*/  SecureProvider ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  infoA ; 
 int /*<<< orphan*/  infoW ; 
 int /*<<< orphan*/  kerberosTableA ; 
 int /*<<< orphan*/  kerberosTableW ; 

void FUNC2(void)
{
    SecureProvider *provider = FUNC1(&kerberosTableA, &kerberosTableW, NULL);
    FUNC0(provider, 1, &infoA, &infoW);
}