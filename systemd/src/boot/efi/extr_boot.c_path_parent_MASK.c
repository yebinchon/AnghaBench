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
typedef  int UINTN ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  EFI_DEVICE_PATH ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * EndDevicePath ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

EFI_DEVICE_PATH *FUNC3(EFI_DEVICE_PATH *path, EFI_DEVICE_PATH *node) {
        EFI_DEVICE_PATH *parent;
        UINTN len;

        len = (UINT8*) FUNC2(node) - (UINT8*) path;
        parent = (EFI_DEVICE_PATH*) FUNC0(len + sizeof(EFI_DEVICE_PATH));
        FUNC1(parent, path, len);
        FUNC1((UINT8*) parent + len, EndDevicePath, sizeof(EFI_DEVICE_PATH));

        return parent;
}