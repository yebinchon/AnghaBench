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

__attribute__((used)) static size_t
FUNC2(struct buf *ob, struct smartypants_data *smrt, uint8_t previous_char, const uint8_t *text, size_t size)
{
	if (size >= 3 && text[1] == '-' && text[2] == '-') {
		FUNC0(ob, "&mdash;");
		return 2;
	}

	if (size >= 2 && text[1] == '-') {
		FUNC0(ob, "&ndash;");
		return 1;
	}

	FUNC1(ob, text[0]);
	return 0;
}