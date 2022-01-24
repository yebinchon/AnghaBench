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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int __time64_t ;

/* Variables and functions */
 int MAX_32BIT_TIME ; 
 int FUNC0 (struct tm*,int) ; 

time_t
FUNC1(struct tm *ptm)
{
    __time64_t time = FUNC0(ptm, 1);
    return (time_t)((time > MAX_32BIT_TIME) ? -1 : time);
}