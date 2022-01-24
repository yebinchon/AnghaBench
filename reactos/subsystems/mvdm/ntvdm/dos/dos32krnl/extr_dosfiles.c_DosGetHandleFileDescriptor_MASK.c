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
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/ * PDOS_FILE_DESCRIPTOR ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

PDOS_FILE_DESCRIPTOR FUNC2(WORD DosHandle)
{
    BYTE DescriptorId = FUNC1(DosHandle);
    if (DescriptorId == 0xFF) return NULL;

    return FUNC0(DescriptorId);
}