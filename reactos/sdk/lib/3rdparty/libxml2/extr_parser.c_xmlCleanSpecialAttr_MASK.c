#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlParserCtxtPtr ;
struct TYPE_4__ {int /*<<< orphan*/ * attsSpecial; } ;

/* Variables and functions */
 int /*<<< orphan*/  xmlCleanSpecialAttrCallback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(xmlParserCtxtPtr ctxt)
{
    if (ctxt->attsSpecial == NULL)
        return;

    FUNC1(ctxt->attsSpecial, xmlCleanSpecialAttrCallback, ctxt);

    if (FUNC2(ctxt->attsSpecial) == 0) {
        FUNC0(ctxt->attsSpecial, NULL);
        ctxt->attsSpecial = NULL;
    }
    return;
}