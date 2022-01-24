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
typedef  char uint8_t ;
struct smartypants_data {int /*<<< orphan*/  in_dquote; } ;
struct buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*,char const) ; 
 scalar_t__ FUNC1 (struct buf*,char,char const,char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t
FUNC2(struct buf *ob, struct smartypants_data *smrt, uint8_t previous_char, const uint8_t *text, size_t size)
{
	if (size >= 2 && text[1] == '`') {
		if (FUNC1(ob, previous_char, size >= 3 ? text[2] : 0, 'd', &smrt->in_dquote))
			return 1;
	}

	FUNC0(ob, text[0]);
	return 0;
}