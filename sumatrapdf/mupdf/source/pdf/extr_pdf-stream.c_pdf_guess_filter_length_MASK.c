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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

__attribute__((used)) static int
FUNC1(int len, const char *filter)
{
	if (!FUNC0(filter, "ASCIIHexDecode"))
		return len / 2;
	if (!FUNC0(filter, "ASCII85Decode"))
		return len * 4 / 5;
	if (!FUNC0(filter, "FlateDecode"))
		return len * 3;
	if (!FUNC0(filter, "RunLengthDecode"))
		return len * 3;
	if (!FUNC0(filter, "LZWDecode"))
		return len * 2;
	return len;
}