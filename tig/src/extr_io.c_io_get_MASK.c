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
struct buffer {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct io*,struct buffer*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

bool
FUNC1(struct io *io, struct buffer *buf, int c, bool can_read)
{
	return FUNC0(io, buf, c, NULL, can_read, 0);
}