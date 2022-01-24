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
struct TYPE_2__ {int /*<<< orphan*/  (* write ) (char const*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 scalar_t__ FUNC2 () ; 
 TYPE_1__* wpp_callbacks ; 

__attribute__((used)) static void FUNC3(const char *s, int len)
{
	if(FUNC2())
		FUNC0(s, len);
	else
		wpp_callbacks->write(s, len);
}