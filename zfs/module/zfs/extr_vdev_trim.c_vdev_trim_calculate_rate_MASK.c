#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_3__ {int trim_bytes_done; scalar_t__ trim_start_time; } ;
typedef  TYPE_1__ trim_args_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static uint64_t
FUNC2(trim_args_t *ta)
{
	return (ta->trim_bytes_done * 1000 /
	    (FUNC0(FUNC1() - ta->trim_start_time) + 1));
}