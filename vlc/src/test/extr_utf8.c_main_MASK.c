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
 int /*<<< orphan*/  _IONBF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 

int FUNC4 (void)
{
    (void)FUNC0 (stdout, NULL, _IONBF, 0);

    /* Valid sequences */
    FUNC3("", 0, 0);
    FUNC3("\n", 1, '\n');
    FUNC3("\x7F", 1, 0x7F);
    FUNC3("\xC3\xA9", 2, 0xE9);
    FUNC3("\xDF\xBF", 2, 0x7FF);
    FUNC3("\xE2\x82\xAC", 3, 0x20AC);
    FUNC3("\xEF\xBF\xBF", 3, 0xFFFF);
    FUNC3("\xF0\x90\x80\x81", 4, 0x10001);
    FUNC3("\xF4\x80\x80\x81", 4, 0x100001);
    FUNC3("\xF4\x8F\xBF\xBF", 4, 0x10FFFF);
    /* Overlongs */
    FUNC3("\xC0\x80", -1, 0);
    FUNC3("\xC1\xBF", -1, 0x7F);
    FUNC3("\xE0\x80\x80", -1, 0);
    FUNC3("\xE0\x9F\xBF", -1, 0x7FF);
    FUNC3("\xF0\x80\x80\x80", -1, 0);
    FUNC3("\xF0\x8F\xBF\xBF", -1, 0xFFFF);
    /* Out of range */
    FUNC3("\xF4\x90\x80\x80", -1, 0x110000);
    FUNC3("\xF7\xBF\xBF\xBF", -1, 0x1FFFFF);
    /* Surrogates */
    FUNC3("\xED\x9F\xBF", 3, 0xD7FF);
    FUNC3("\xED\xA0\x80", -1, 0xD800);
    FUNC3("\xED\xBF\xBF", -1, 0xDFFF);
    FUNC3("\xEE\x80\x80", 3, 0xE000);
    /* Spurious continuation byte */
    FUNC3("\x80", -1, 0);
    FUNC3("\xBF", -1, 0);
    /* Missing continuation byte */
    FUNC3("\xDF", -1, 0x7FF);
    FUNC3("\xEF", -1, 0xFFFF);
    FUNC3("\xF4", -1, 0x10FFFF);
    FUNC3("\xEF\xBF", -1, 0xFFFF);
    FUNC3("\xF4\xBF\xBF", -1, 0x10FFFF);

    FUNC1 ("", "");
    FUNC1 ("this_should_not_be_modified_1234",
          "this_should_not_be_modified_1234");

    FUNC1 ("\xFF", "?"); // invalid byte
    FUNC1 ("\xEF\xBB\xBFHello", "\xEF\xBB\xBFHello"); // BOM
    FUNC1 ("\x00\xE9", ""); // no conversion past end of string

    FUNC1 ("T\xC3\xA9l\xC3\xA9vision \xE2\x82\xAC", "Télévision €");
    FUNC1 ("T\xE9l\xE9vision", "T?l?vision");
    FUNC1 ("\xC1\x94\xC3\xa9l\xC3\xA9vision", "??élévision"); /* overlong */

    FUNC1 ("Hel\xF0\x83\x85\x87lo", "Hel????lo"); /* more overlong */

    FUNC2 ("", "", 0);
    FUNC2 ("", "a", -1);
    FUNC2 ("a", "", 0);
    FUNC2 ("heLLo", "l", 2);
    FUNC2 ("heLLo", "lo", 3);
    FUNC2 ("heLLo", "llo", 2);
    FUNC2 ("heLLo", "la", -1);
    FUNC2 ("heLLo", "oa", -1);
    FUNC2 ("Télé", "é", 1);
    FUNC2 ("Télé", "élé", 1);
    FUNC2 ("Télé", "léé", -1);

    return 0;
}