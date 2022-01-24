#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  sjis_temp ;
struct TYPE_2__ {int (* char2uni ) (unsigned char*,int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENAMETOOLONG ; 
 scalar_t__ FUNC0 (unsigned char const,unsigned char const) ; 
 scalar_t__ FUNC1 (unsigned char const,unsigned char const) ; 
 scalar_t__ FUNC2 (unsigned char const,unsigned char const) ; 
 scalar_t__ FUNC3 (unsigned char const,unsigned char const) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char const,unsigned char const,int,unsigned char,unsigned char,int) ; 
 unsigned char const SS3 ; 
 scalar_t__ FUNC5 (unsigned char*,unsigned char const,unsigned char const) ; 
 TYPE_1__* p_nls ; 
 int FUNC6 (unsigned char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(const unsigned char *rawstring, int boundlen,
		    wchar_t *uni)
{
	unsigned char sjis_temp[2];
	int euc_offset, n;

	if ( !p_nls )
		return -EINVAL;
	if (boundlen <= 0)
		return -ENAMETOOLONG;

	/* translate EUC-JP into SJIS */
	if (rawstring[0] > 0x7F) {
		if (rawstring[0] == SS3) {
			if (boundlen < 3)
				return -EINVAL;
			euc_offset = 3;

			if (FUNC2(rawstring[1], rawstring[2])) {
				/* User defined characters half high */
				FUNC4(rawstring[1], rawstring[2], 0xF5,
					     sjis_temp[0], sjis_temp[1], 0xF5);
			} else if (FUNC5(sjis_temp,rawstring[1],rawstring[2])) {
				/* IBM extended characters */
			} else {
				/* JIS X 0212 and Invalid characters*/
				return -EINVAL;

				/* 'GETA' with SJIS coding */
				/* sjis_temp[0] = 0x81; */
				/* sjis_temp[1] = 0xAC; */
			}
		} else {
			if (boundlen < 2)
				return -EINVAL;
			euc_offset = 2;

			if (FUNC0(rawstring[0], rawstring[1])) {
				/* JIS X 0201 KANA */
				sjis_temp[0] = rawstring[1];
				sjis_temp[1] = 0x00;
			} else if (FUNC3(rawstring[0], rawstring[1])) {
				/* User defined characters half low */
				FUNC4(rawstring[0], rawstring[1], 0xF5,
					     sjis_temp[0], sjis_temp[1], 0xF0);
			} else if (FUNC1(rawstring[0], rawstring[1])) {
				/* JIS X 0208 (include NEC spesial characters) */
				sjis_temp[0] = ((rawstring[0]-0x5f)/2) ^ 0xA0;
				if (!(rawstring[0] & 1))
					sjis_temp[1] = rawstring[1] - 0x02;
				else if (rawstring[1] < 0xE0)
					sjis_temp[1] = rawstring[1] - 0x61;
				else
					sjis_temp[1] = rawstring[1] - 0x60;
			} else {
				/* Invalid characters */
				return -EINVAL;
			}
		}
	} else {
		euc_offset = 1;

		/* JIS X 0201 ROMAJI */
		sjis_temp[0] = rawstring[0];
		sjis_temp[1] = 0x00;
	}

	if ( (n = p_nls->char2uni(sjis_temp, sizeof(sjis_temp), uni)) < 0)
		return n;

	return euc_offset;
}