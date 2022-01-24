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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int xmlSaveNoEmptyTagsThrDef ; 
 int /*<<< orphan*/  xmlThrDefMutex ; 

int FUNC2(int v) {
    int ret;
    FUNC0(xmlThrDefMutex);
    ret = xmlSaveNoEmptyTagsThrDef;
    xmlSaveNoEmptyTagsThrDef = v;
    FUNC1(xmlThrDefMutex);
    return ret;
}