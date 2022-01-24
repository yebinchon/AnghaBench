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
struct ifproxy {int /*<<< orphan*/ * chan; scalar_t__ proxy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ifproxy*) ; 

__attribute__((used)) static void FUNC3(struct ifproxy * This)
{
    FUNC2(This);
    if (This->proxy) FUNC1(This->proxy);

    FUNC0(This->chan);
    This->chan = NULL;
}