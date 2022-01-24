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
 char* FUNC0 (int) ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (int) ; 

const char *
FUNC3 (int converter_type)
{	const char *desc ;

	if ((desc = FUNC1 (converter_type)) != NULL)
		return desc ;

	if ((desc = FUNC2 (converter_type)) != NULL)
		return desc ;

	if ((desc = FUNC0 (converter_type)) != NULL)
		return desc ;

	return NULL ;
}