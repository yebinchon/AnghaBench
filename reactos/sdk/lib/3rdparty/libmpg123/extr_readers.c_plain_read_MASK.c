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
typedef  scalar_t__ ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  rdat; } ;
typedef  TYPE_1__ mpg123_handle ;

/* Variables and functions */
 scalar_t__ VERBOSE3 ; 
 int /*<<< orphan*/  FUNC0 (char*,long,long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,void*,size_t) ; 

__attribute__((used)) static ssize_t FUNC2(mpg123_handle *fr, void *buf, size_t count)
{
	ssize_t ret = FUNC1(&fr->rdat, buf, count);
	if(VERBOSE3) FUNC0("read %li bytes of %li", (long)ret, (long)count);
	return ret;
}