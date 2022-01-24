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
typedef  int /*<<< orphan*/  TCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  _TEOF ; 
 int /*<<< orphan*/  _THEX_FORMAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  stdin ; 

__attribute__((used)) static int FUNC3(void)
{
    int result = 0;
    TCHAR ch;

    FUNC2(FUNC0("Enter lines for dumping or <ctrl-z><nl> to finish:\n"));

    //while ((ch = _gettchar()) != _TEOF) {
    while ((ch = FUNC1(stdin)) != _TEOF) {
        FUNC2(_THEX_FORMAT, ch);
        //printf("0x%04x ", ch);
    }
    return result;
}