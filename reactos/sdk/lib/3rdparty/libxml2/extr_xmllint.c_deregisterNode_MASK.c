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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nbregister ; 

__attribute__((used)) static void FUNC2(xmlNodePtr node)
{
    FUNC0(node->_private != NULL);
    FUNC0(*(long*)node->_private == (long) 0x81726354);
    FUNC1(node->_private);
    nbregister--;
}