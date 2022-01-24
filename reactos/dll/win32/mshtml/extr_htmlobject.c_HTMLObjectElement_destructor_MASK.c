#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  node; } ;
struct TYPE_6__ {TYPE_1__ element; scalar_t__ plugin_host; } ;
struct TYPE_7__ {TYPE_2__ plugin_container; } ;
typedef  TYPE_3__ HTMLObjectElement ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(HTMLDOMNode *iface)
{
    HTMLObjectElement *This = FUNC2(iface);

    if(This->plugin_container.plugin_host)
        FUNC1(This->plugin_container.plugin_host);

    FUNC0(&This->plugin_container.element.node);
}