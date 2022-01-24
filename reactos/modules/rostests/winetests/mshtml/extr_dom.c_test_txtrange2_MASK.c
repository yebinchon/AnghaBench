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
typedef  int /*<<< orphan*/  IHTMLTxtRange ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VARIANT_FALSE ; 
 int /*<<< orphan*/  characterW ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC6(IHTMLDocument2 *doc)
{
    IHTMLTxtRange *range;

    range = FUNC1(doc);

    FUNC5(range, "abc\r\n\r\n123\r\n\r\n\r\ndef");
    FUNC3(range, characterW, 5, 5);
    FUNC4(range, characterW, 1, 1);
    FUNC5(range, "2");
    FUNC3(range, characterW, -3, -3);
    FUNC4(range, characterW, 3, 3);
    FUNC5(range, "c\r\n\r\n1");
    FUNC2(range, VARIANT_FALSE);
    FUNC4(range, characterW, 4, 4);
    FUNC5(range, "23");
    FUNC4(range, characterW, 1, 1);
    FUNC5(range, "23\r\n\r\n\r\nd");
    FUNC4(range, characterW, -1, -1);
    FUNC5(range, "23");
    FUNC4(range, characterW, -1, -1);
    FUNC5(range, "23");
    FUNC4(range, characterW, -2, -2);
    FUNC5(range, "2");

    FUNC0(range);
}