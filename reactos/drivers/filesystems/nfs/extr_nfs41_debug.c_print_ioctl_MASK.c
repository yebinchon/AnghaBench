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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
#define  IRP_MJ_DEVICE_CONTROL 130 
#define  IRP_MJ_FILE_SYSTEM_CONTROL 129 
#define  IRP_MJ_INTERNAL_DEVICE_CONTROL 128 

void FUNC1(int on, int op)
{
    if(!on) return;
    switch(op) {
        case IRP_MJ_FILE_SYSTEM_CONTROL:
            FUNC0("IRP_MJ_FILE_SYSTEM_CONTROL\n");
            break;
        case IRP_MJ_DEVICE_CONTROL:
            FUNC0("IRP_MJ_DEVICE_CONTROL\n");
            break;
        case IRP_MJ_INTERNAL_DEVICE_CONTROL:
            FUNC0("IRP_MJ_INTERNAL_DEVICE_CONTROL\n");
            break;
        default:
            FUNC0("UNKNOWN MJ IRP %d\n", op);
    };
}