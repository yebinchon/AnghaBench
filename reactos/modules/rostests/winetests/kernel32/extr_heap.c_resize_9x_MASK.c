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
typedef  int SIZE_T ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int,int) ; 

__attribute__((used)) static SIZE_T FUNC1(SIZE_T size)
{
    DWORD dwSizeAligned = (size + 3) & ~3;
    return FUNC0(dwSizeAligned, 12); /* at least 12 bytes */
}