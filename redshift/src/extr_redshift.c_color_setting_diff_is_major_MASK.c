#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__* gamma; scalar_t__ brightness; scalar_t__ temperature; } ;
typedef  TYPE_1__ color_setting_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 double FUNC1 (scalar_t__) ; 

__attribute__((used)) static int
FUNC2(
	const color_setting_t *first,
	const color_setting_t *second)
{
	return (FUNC0(first->temperature - second->temperature) > 25 ||
		FUNC1(first->brightness - second->brightness) > 0.1 ||
		FUNC1(first->gamma[0] - second->gamma[0]) > 0.1 ||
		FUNC1(first->gamma[1] - second->gamma[1]) > 0.1 ||
		FUNC1(first->gamma[2] - second->gamma[2]) > 0.1);
}