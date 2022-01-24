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
struct TYPE_4__ {int /*<<< orphan*/  errNo; } ;

/* Variables and functions */
 int /*<<< orphan*/  XML_ERR_USER_STOP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void
FUNC1(xmlParserCtxtPtr ctxt) {
    if (ctxt == NULL)
        return;
    FUNC0(ctxt);
    ctxt->errNo = XML_ERR_USER_STOP;
}