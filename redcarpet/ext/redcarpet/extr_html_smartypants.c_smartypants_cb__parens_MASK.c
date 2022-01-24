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
struct smartypants_data {int dummy; } ;
struct buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*,char const) ; 
 char FUNC2 (char const) ; 

__attribute__((used)) static size_t
FUNC3(struct buf *ob, struct smartypants_data *smrt, uint8_t previous_char, const uint8_t *text, size_t size)
{
	if (size >= 3) {
		uint8_t t1 = FUNC2(text[1]);
		uint8_t t2 = FUNC2(text[2]);

		if (t1 == 'c' && t2 == ')') {
			FUNC0(ob, "&copy;");
			return 2;
		}

		if (t1 == 'r' && t2 == ')') {
			FUNC0(ob, "&reg;");
			return 2;
		}

		if (size >= 4 && t1 == 't' && t2 == 'm' && text[3] == ')') {
			FUNC0(ob, "&trade;");
			return 3;
		}
	}

	FUNC1(ob, text[0]);
	return 0;
}