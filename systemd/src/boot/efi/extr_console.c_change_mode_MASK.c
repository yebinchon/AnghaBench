#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UINTN ;
struct TYPE_4__ {TYPE_1__* ConOut; } ;
struct TYPE_3__ {int /*<<< orphan*/  SetMode; } ;
typedef  int /*<<< orphan*/  EFI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* ST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,TYPE_1__*,int) ; 

__attribute__((used)) static EFI_STATUS FUNC2(UINTN mode) {
        EFI_STATUS err;

        err = FUNC1(ST->ConOut->SetMode, 2, ST->ConOut, mode);

        /* Special case mode 1: when using OVMF and qemu, setting it returns error
         * and breaks console output. */
        if (FUNC0(err) && mode == 1)
                FUNC1(ST->ConOut->SetMode, 2, ST->ConOut, (UINTN)0);

        return err;
}