#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int* mbctype; } ;

/* Variables and functions */
 int _M1 ; 
 TYPE_1__* FUNC0 () ; 

int FUNC1(unsigned int c)
{
  return (FUNC0()->mbctype[(c&0xff) + 1] & _M1) != 0;
}