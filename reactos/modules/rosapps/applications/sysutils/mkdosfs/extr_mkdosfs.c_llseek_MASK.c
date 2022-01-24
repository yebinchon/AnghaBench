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
typedef  int loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,int,int*,int) ; 

__attribute__((used)) static loff_t FUNC1( int fd, loff_t offset, int whence )
{
    loff_t actual;

    if (FUNC0(fd, offset>>32, offset&0xffffffff, &actual, whence) != 0)
	return (loff_t)-1;
    return actual;
}