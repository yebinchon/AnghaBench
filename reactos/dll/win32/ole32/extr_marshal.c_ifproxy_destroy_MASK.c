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
struct ifproxy {scalar_t__ proxy; int /*<<< orphan*/ * chan; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifproxy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct ifproxy*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifproxy*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ifproxy * This)
{
    FUNC4("%p\n", This);

    /* release public references to this object so that the stub can know
     * when to destroy itself */
    FUNC5(This);

    FUNC6(&This->entry);

    if (This->chan)
    {
        FUNC2(This->chan);
        This->chan = NULL;
    }

    if (This->proxy) FUNC3(This->proxy);

    FUNC1(FUNC0(), 0, This);
}