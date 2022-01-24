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
typedef  int /*<<< orphan*/  xmlStructuredErrorFunc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* xmlStructuredErrorContextThrDef ; 
 int /*<<< orphan*/  xmlStructuredErrorThrDef ; 
 int /*<<< orphan*/  xmlThrDefMutex ; 

void
FUNC2(void *ctx, xmlStructuredErrorFunc handler) {
    FUNC0(xmlThrDefMutex);
    xmlStructuredErrorContextThrDef = ctx;
    xmlStructuredErrorThrDef = handler;
    FUNC1(xmlThrDefMutex);
}