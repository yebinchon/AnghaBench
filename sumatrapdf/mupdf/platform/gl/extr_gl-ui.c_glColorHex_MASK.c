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
typedef  float hex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float,float,float) ; 

void FUNC1(unsigned int hex)
{
	float r = ((hex>>16)&0xff) / 255.0f;
	float g = ((hex>>8)&0xff) / 255.0f;
	float b = ((hex)&0xff) / 255.0f;
	FUNC0(r, g, b);
}