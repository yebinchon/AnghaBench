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
struct buffer {char* member_0; size_t member_1; char const* data; } ;
typedef  int /*<<< orphan*/  iconv_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct buffer*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,size_t) ; 

const char *
FUNC3(iconv_t iconv_cd, const char *string, size_t length)
{
	char *instr = FUNC2(string, length);
	struct buffer buf = { instr, length };
	const char *ret = buf.data && FUNC0(iconv_cd, &buf) ? buf.data : string;

	FUNC1(instr);
	return ret == instr ? string : ret;
}