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
typedef  int ulong32 ;

/* Variables and functions */
 int* Te4_0 ; 
 int* Te4_1 ; 
 int* Te4_2 ; 
 int* Te4_3 ; 
 size_t FUNC0 (int,int) ; 

__attribute__((used)) static ulong32 FUNC1(ulong32 temp)
{
   return (Te4_3[FUNC0(temp, 2)]) ^
          (Te4_2[FUNC0(temp, 1)]) ^
          (Te4_1[FUNC0(temp, 0)]) ^
          (Te4_0[FUNC0(temp, 3)]);
}