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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC3 (void)
{
    (void)FUNC2 (stdout, NULL, _IONBF, 0);
    FUNC0 ("This should not be modified 1234",
            "This should not be modified 1234");

    FUNC0 ("R&eacute;mi&nbsp;Fran&ccedil;ois&nbsp;&amp;&nbsp;&Eacute;mile",
            "Rémi François & Émile");
    FUNC0 ("R&#233;mi&nbsp;Fran&#231;ois&nbsp;&amp;&nbsp;&#201;mile",
            "Rémi François & Émile");
    FUNC0 ("R&#xe9;mi&nbsp;Fran&#xe7;ois&nbsp;&amp;&nbsp;&#xc9;mile",
            "Rémi François & Émile");
    FUNC0 ("R&#xE9;mi&nbsp;Fran&#xE7;ois&nbsp;&amp;&nbsp;&#xC9;mile",
            "Rémi François & Émile");

    FUNC0 ("", "");

    /* tests with invalid input */
    FUNC0 ("&<\"'", "&<\"'");
    FUNC0 ("&oelig", "&oelig");

    FUNC1 ("", "");
    FUNC1 ("a'àc\"çe&én<ño>ö1:", "a&#39;àc&quot;çe&amp;én&lt;ño&gt;ö1:");
    FUNC1 ("\xC2\x81\xC2\x85", "&#129;\xC2\x85");
    FUNC1 (" \t\r\n", " \t\r\n");

    return 0;
}