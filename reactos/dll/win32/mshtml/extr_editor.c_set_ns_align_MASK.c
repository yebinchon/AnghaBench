#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsICommandParams ;
struct TYPE_6__ {TYPE_1__* doc_obj; } ;
struct TYPE_5__ {int /*<<< orphan*/  nscontainer; } ;
typedef  TYPE_2__ HTMLDocument ;

/* Variables and functions */
 int /*<<< orphan*/  NSCMD_ALIGN ; 
 int /*<<< orphan*/  NSSTATE_ATTRIBUTE ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC4(HTMLDocument *This, const char *align_str)
{
    nsICommandParams *nsparam;

    if(!This->doc_obj->nscontainer)
        return;

    nsparam = FUNC0();
    FUNC3(nsparam, NSSTATE_ATTRIBUTE, align_str);

    FUNC1(This, NSCMD_ALIGN, nsparam);

    FUNC2(nsparam);
}