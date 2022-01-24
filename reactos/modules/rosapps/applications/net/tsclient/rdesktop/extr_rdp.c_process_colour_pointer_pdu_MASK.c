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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint16 ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  int /*<<< orphan*/  HCURSOR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC5(RDPCLIENT * This, STREAM s)
{
	uint16 x, y, width, height, cache_idx, masklen, datalen;
	uint8 *mask, *data;
	HCURSOR cursor;

	FUNC1(s, cache_idx);
	FUNC1(s, x);
	FUNC1(s, y);
	FUNC1(s, width);
	FUNC1(s, height);
	FUNC1(s, masklen);
	FUNC1(s, datalen);
	FUNC2(s, data, datalen);
	FUNC2(s, mask, masklen);
	cursor = FUNC3(This, x, y, width, height, mask, data);
	FUNC4(This, cursor);
	FUNC0(This, cache_idx, cursor);
}