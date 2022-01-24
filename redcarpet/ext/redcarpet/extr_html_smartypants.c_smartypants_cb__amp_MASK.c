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
typedef  int /*<<< orphan*/  uint8_t ;
struct smartypants_data {int /*<<< orphan*/  in_dquote; } ;
struct buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*,char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,char*,int) ; 
 scalar_t__ FUNC2 (struct buf*,int /*<<< orphan*/ ,int /*<<< orphan*/  const,char,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (struct buf*,struct smartypants_data*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,int) ; 
 int FUNC4 (int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static size_t
FUNC5(struct buf *ob, struct smartypants_data *smrt, uint8_t previous_char, const uint8_t *text, size_t size)
{
	if (size >= 6 && FUNC1(text, "&quot;", 6) == 0) {
		if (FUNC2(ob, previous_char, size >= 7 ? text[6] : 0, 'd', &smrt->in_dquote))
			return 5;
	}

	int len = FUNC4(text, size);
	if (len > 0) {
		return (len-1) + FUNC3(ob, smrt, previous_char, text+(len-1), size-(len-1), text, len);
	}

	if (size >= 4 && FUNC1(text, "&#0;", 4) == 0)
		return 3;

	FUNC0(ob, '&');
	return 0;
}