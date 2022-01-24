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
struct buf {int dummy; } ;
typedef  enum mkd_autolink { ____Placeholder_mkd_autolink } mkd_autolink ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MKDA_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buf const*) ; 

__attribute__((used)) static int
FUNC3(struct buf *ob, const struct buf *link, enum mkd_autolink type, void *opaque)
{
	FUNC1("autolink", 2, FUNC2(link),
		type == MKDA_NORMAL ? FUNC0("url") : FUNC0("email"));
}