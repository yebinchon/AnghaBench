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
typedef  int /*<<< orphan*/  cp_static_data_t ;
struct TYPE_3__ {int /*<<< orphan*/  doc_node; scalar_t__ window; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  TYPE_1__ HTMLDocument ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(IUnknown *iface, cp_static_data_t *cp)
{
    HTMLDocument *This = FUNC0((IHTMLDocument2*)iface);

    if(This->window)
        FUNC1(This->doc_node, cp);
}