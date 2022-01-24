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
typedef  scalar_t__ ULONG ;
typedef  scalar_t__ COLORREF ;

/* Variables and functions */
 scalar_t__ BMF_1BPP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
ULONG
FUNC2(ULONG iFormat, COLORREF crColor, COLORREF crBackColor)
{
    if (iFormat == BMF_1BPP)
        return crBackColor;
    return FUNC1(iFormat, FUNC0(iFormat, crColor));
}