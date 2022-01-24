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
struct key {int dummy; } ;
struct input {int dummy; } ;
typedef  enum input_status { ____Placeholder_input_status } input_status ;

/* Variables and functions */
 int INPUT_CANCEL ; 
 int INPUT_STOP ; 
 char FUNC0 (struct key*) ; 
 unsigned long FUNC1 (struct key*) ; 
 int FUNC2 (struct input*,struct key*) ; 

__attribute__((used)) static enum input_status
FUNC3(struct input *input, struct key *key)
{
	unsigned long c = FUNC1(key);

	if (c == 'y' || c == 'Y')
		return INPUT_STOP;
	if (c == 'n' || c == 'N' || FUNC0(key) == 'C')
		return INPUT_CANCEL;
	return FUNC2(input, key);
}