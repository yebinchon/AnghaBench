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
struct timeval {int /*<<< orphan*/  tv_sec; } ;
struct paste_buffer {int dummy; } ;
struct format_tree {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct format_tree*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct format_tree*,char*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct paste_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct paste_buffer*,size_t*) ; 
 char* FUNC5 (struct paste_buffer*) ; 
 char* FUNC6 (struct paste_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct timeval*) ; 

void
FUNC8(struct format_tree *ft, struct paste_buffer *pb)
{
	struct timeval	 tv;
	size_t		 size;
	char		*s;

	FUNC7(&tv);
	tv.tv_sec = FUNC3(pb);
	FUNC4(pb, &size);

	FUNC0(ft, "buffer_size", "%zu", size);
	FUNC0(ft, "buffer_name", "%s", FUNC5(pb));
	FUNC1(ft, "buffer_created", &tv);

	s = FUNC6(pb);
	FUNC0(ft, "buffer_sample", "%s", s);
	FUNC2(s);
}