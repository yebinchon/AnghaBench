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
struct option_info {void* value; } ;

/* Variables and functions */
 int FUNC0 (struct option_info*) ; 
 struct option_info* option_info ; 

__attribute__((used)) static struct option_info *
FUNC1(void *value)
{
	int i;

	for (i = 0; i < FUNC0(option_info); i++)
		if (option_info[i].value == value)
			return &option_info[i];

	return NULL;
}