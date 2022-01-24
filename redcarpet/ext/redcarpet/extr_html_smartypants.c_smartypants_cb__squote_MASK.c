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
struct smartypants_data {int dummy; } ;
struct buf {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct buf*,struct smartypants_data*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static size_t
FUNC1(struct buf *ob, struct smartypants_data *smrt, uint8_t previous_char, const uint8_t *text, size_t size)
{
	return FUNC0(ob, smrt, previous_char, text, size, text, 1);
}