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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int* maskbit ; 
 scalar_t__ vidmem ; 
 scalar_t__* xconv ; 
 scalar_t__* y80 ; 

VOID FUNC3(INT x, INT y, UCHAR c)
{
    ULONG offset;

    offset = xconv[x]+y80[y];

    FUNC1((PUCHAR)GRA_I,0x08);
    FUNC1((PUCHAR)GRA_D,maskbit[x]);

    FUNC0(vidmem + offset);
    FUNC2(vidmem + offset, c);
}