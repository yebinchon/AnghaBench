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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (float,float,float) ; 

void FUNC2(float *loc, float *ang)
{
   FUNC0(-ang[1], 0,1,0);
   FUNC0(-ang[0], 1,0,0);
   FUNC0(-ang[2], 0,0,1);
   FUNC1(-loc[0], -loc[1], -loc[2]);
}