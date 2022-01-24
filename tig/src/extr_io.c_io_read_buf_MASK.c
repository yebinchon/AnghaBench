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
struct io {int dummy; } ;
struct buffer {scalar_t__ data; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct io*) ; 
 scalar_t__ FUNC1 (struct io*,struct buffer*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

bool
FUNC5(struct io *io, char buf[], size_t bufsize, bool allow_empty)
{
	struct buffer result = {0};

	if (FUNC1(io, &result, '\n', true)) {
		result.data = FUNC3(result.data);
		FUNC2(buf, bufsize, result.data, FUNC4(result.data));
	}

	return FUNC0(io) && (result.data || allow_empty);
}