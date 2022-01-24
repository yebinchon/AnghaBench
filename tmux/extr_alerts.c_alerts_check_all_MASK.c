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
struct window {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct window*) ; 
 int FUNC1 (struct window*) ; 
 int FUNC2 (struct window*) ; 

__attribute__((used)) static int
FUNC3(struct window *w)
{
	int	alerts;

	alerts	= FUNC1(w);
	alerts |= FUNC0(w);
	alerts |= FUNC2(w);
	return (alerts);
}