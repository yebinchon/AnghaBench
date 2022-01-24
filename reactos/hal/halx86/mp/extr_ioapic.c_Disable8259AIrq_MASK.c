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
typedef  int ULONG ;
typedef  int UCHAR ;
typedef  int /*<<< orphan*/  PUCHAR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

VOID FUNC2(ULONG irq)
{
    UCHAR tmp;

    if (irq >= 8) 
    {
       tmp = FUNC0((PUCHAR)0xA1);
       tmp |= (1 << (irq - 8));
       FUNC1((PUCHAR)0xA1, tmp);
    } 
    else 
    {
       tmp = FUNC0((PUCHAR)0x21);
       tmp |= (1 << irq);
       FUNC1((PUCHAR)0x21, tmp);
    }
}