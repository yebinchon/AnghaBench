#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_1__ IWICBitmapSource_iface; } ;
typedef  TYPE_2__ BitmapTestSrc ;

/* Variables and functions */
 int /*<<< orphan*/  BitmapTestSrc_Vtbl ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,TYPE_2__*,...) ; 

__attribute__((used)) static void FUNC3(BitmapTestSrc *This)
{
    FUNC2(This->IWICBitmapSource_iface.lpVtbl == &BitmapTestSrc_Vtbl, "test bitmap %p deleted with incorrect vtable\n", This);
    FUNC2(This->ref == 1, "test bitmap %p deleted with %i references instead of 1\n", This, This->ref);
    FUNC1(FUNC0(), 0, This);
}