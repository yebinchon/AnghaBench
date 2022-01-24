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
struct html_renderopt {int dummy; } ;
struct buf {scalar_t__ size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct html_renderopt*) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*,char*) ; 

__attribute__((used)) static void
FUNC3(struct buf *ob, void *opaque)
{
	struct html_renderopt *options = opaque;
	if (ob->size) FUNC1(ob, '\n');
	FUNC2(ob, FUNC0(options) ? "<hr/>\n" : "<hr>\n");
}