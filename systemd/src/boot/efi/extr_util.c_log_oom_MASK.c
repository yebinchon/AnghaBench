#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  Stall; } ;
typedef  int /*<<< orphan*/  EFI_STATUS ;

/* Variables and functions */
 TYPE_1__* BS ; 
 int /*<<< orphan*/  EFI_OUT_OF_RESOURCES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 

EFI_STATUS FUNC2(void) {
        FUNC0(L"Out of memory.");
        (void) FUNC1(BS->Stall, 1, 3 * 1000 * 1000);
        return EFI_OUT_OF_RESOURCES;
}