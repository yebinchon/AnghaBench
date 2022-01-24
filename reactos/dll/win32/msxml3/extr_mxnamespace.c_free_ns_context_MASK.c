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
struct nscontext {int count; struct nscontext* ns; int /*<<< orphan*/  uri; int /*<<< orphan*/  prefix; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nscontext*) ; 

__attribute__((used)) static void FUNC2(struct nscontext *ctxt)
{
    int i;

    for (i = 0; i < ctxt->count; i++)
    {
        FUNC0(ctxt->ns[i].prefix);
        FUNC0(ctxt->ns[i].uri);
    }

    FUNC1(ctxt->ns);
    FUNC1(ctxt);
}