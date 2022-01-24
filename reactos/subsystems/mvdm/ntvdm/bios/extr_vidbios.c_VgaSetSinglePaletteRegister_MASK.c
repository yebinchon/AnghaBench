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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VGA_AC_INDEX ; 
 int /*<<< orphan*/  VGA_AC_WRITE ; 
 int /*<<< orphan*/  VGA_INSTAT1_READ ; 

__attribute__((used)) static __inline VOID FUNC2(BYTE Index, BYTE Value)
{
    /* Write the index */
    FUNC0(VGA_INSTAT1_READ); // Put the AC register into index state
    FUNC1(VGA_AC_INDEX, Index);

    /* Write the data */
    FUNC1(VGA_AC_WRITE, Value);
}