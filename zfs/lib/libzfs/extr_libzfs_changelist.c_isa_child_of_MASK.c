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
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 

boolean_t
FUNC2(const char *dataset, const char *parent)
{
	int len;

	len = FUNC0(parent);

	if (FUNC1(dataset, parent, len) == 0 &&
	    (dataset[len] == '@' || dataset[len] == '/' ||
	    dataset[len] == '\0'))
		return (B_TRUE);
	else
		return (B_FALSE);

}