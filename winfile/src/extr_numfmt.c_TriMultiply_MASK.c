#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int QuadPart; } ;
typedef  TYPE_1__ LARGE_INTEGER ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int,int) ; 

LARGE_INTEGER
FUNC1(DWORD dw1, DWORD dw2, DWORD dwSmall)
{
   LARGE_INTEGER Result;

   Result.QuadPart = FUNC0(dw1, dw2);
   Result.QuadPart = Result.QuadPart * dwSmall;

   return Result;
}