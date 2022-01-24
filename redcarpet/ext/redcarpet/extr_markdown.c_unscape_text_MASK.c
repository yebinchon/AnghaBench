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
struct buf {size_t size; char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*,char) ; 

__attribute__((used)) static void
FUNC2(struct buf *ob, struct buf *src)
{
	size_t i = 0, org;
	while (i < src->size) {
		org = i;
		while (i < src->size && src->data[i] != '\\')
			i++;

		if (i > org)
			FUNC0(ob, src->data + org, i - org);

		if (i + 1 >= src->size)
			break;

		FUNC1(ob, src->data[i + 1]);
		i += 2;
	}
}