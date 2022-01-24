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
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  UCHAR ;
typedef  int /*<<< orphan*/  PUCHAR ;
typedef  size_t INT ;

/* Variables and functions */
 scalar_t__ GRA_D ; 
 scalar_t__ GRA_I ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ vidmem ; 
 scalar_t__* xconv ; 
 scalar_t__* y80 ; 

VOID FUNC2(INT x, INT y, UCHAR c)
{
    ULONG offset;

    offset = xconv[x]+y80[y];

    /* Set the write mode */
    FUNC0((PUCHAR)GRA_I,0x08);
    FUNC0((PUCHAR)GRA_D,0xff);

    FUNC1(vidmem + offset, c);
}