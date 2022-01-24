#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlNodePtr ;
struct TYPE_3__ {int /*<<< orphan*/ * _private; } ;

/* Variables and functions */
 int /*<<< orphan*/  XMLLINT_ERR_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  nbregister ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(xmlNodePtr node)
{
    node->_private = FUNC2(sizeof(long));
    if (node->_private == NULL) {
        FUNC1(stderr, "Out of memory in xmllint:registerNode()\n");
	FUNC0(XMLLINT_ERR_MEM);
    }
    *(long*)node->_private = (long) 0x81726354;
    nbregister++;
}