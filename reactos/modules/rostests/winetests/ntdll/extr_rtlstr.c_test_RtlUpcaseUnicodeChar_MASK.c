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
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char,char,char,char,char,char) ; 
 char FUNC1 (char) ; 

__attribute__((used)) static void FUNC2(void)
{
    int i;
    WCHAR ch;
    WCHAR upper_ch;
    WCHAR expected_upper_ch;

    for (i = 0; i <= 255; i++) {
	ch = (WCHAR) i;
	upper_ch = FUNC1(ch);
	if (ch >= 'a' && ch <= 'z') {
	    expected_upper_ch = ch - 'a' + 'A';
	} else if (ch >= 0xe0 && ch <= 0xfe && ch != 0xf7) {
	    expected_upper_ch = ch - 0x20;
	} else if (ch == 0xff) {
	    expected_upper_ch = 0x178;
	} else {
	    expected_upper_ch = ch;
	}
	FUNC0(upper_ch == expected_upper_ch,
	   "RtlUpcaseUnicodeChar('%c'[=0x%x]) has result '%c'[=0x%x], expected: '%c'[=0x%x]\n",
	   ch, ch, upper_ch, upper_ch, expected_upper_ch, expected_upper_ch);
    }
}