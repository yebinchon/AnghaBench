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
typedef  int VARTYPE ;
typedef  int /*<<< orphan*/  ULONG ;

/* Variables and functions */
 int VT_BYREF ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static unsigned int FUNC1(ULONG *pFlags, VARTYPE vt)
{
    unsigned int size = FUNC0(pFlags, vt);
    if(vt & VT_BYREF) return 3;
    if(size == 0) return 0;
    if(size <= 4) return size - 1;
    return 7;
}