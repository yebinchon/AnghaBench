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
typedef  int /*<<< orphan*/ * xmlGenericErrorFunc ;

/* Variables and functions */
 void* xmlGenericErrorContextThrDef ; 
 int /*<<< orphan*/ * xmlGenericErrorDefaultFunc ; 
 int /*<<< orphan*/ * xmlGenericErrorThrDef ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xmlThrDefMutex ; 

void
FUNC2(void *ctx, xmlGenericErrorFunc handler) {
    FUNC0(xmlThrDefMutex);
    xmlGenericErrorContextThrDef = ctx;
    if (handler != NULL)
	xmlGenericErrorThrDef = handler;
    else
	xmlGenericErrorThrDef = xmlGenericErrorDefaultFunc;
    FUNC1(xmlThrDefMutex);
}