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
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(void) {

        FUNC1(FUNC0("", "", 0) == 0);
        FUNC1(FUNC0("", "", 1) == 0);
        FUNC1(FUNC0("", "a", 1) < 0);
        FUNC1(FUNC0("", "a", 2) < 0);
        FUNC1(FUNC0("a", "", 1) > 0);
        FUNC1(FUNC0("a", "", 2) > 0);
        FUNC1(FUNC0("a", "a", 1) == 0);
        FUNC1(FUNC0("a", "a", 2) == 0);
        FUNC1(FUNC0("a", "b", 1) < 0);
        FUNC1(FUNC0("a", "b", 2) < 0);
        FUNC1(FUNC0("b", "a", 1) > 0);
        FUNC1(FUNC0("b", "a", 2) > 0);
        FUNC1(FUNC0("xxxxyxxxx", "xxxxYxxxx", 9) == 0);
        FUNC1(FUNC0("xxxxxxxxx", "xxxxyxxxx", 9) < 0);
        FUNC1(FUNC0("xxxxXxxxx", "xxxxyxxxx", 9) < 0);
        FUNC1(FUNC0("xxxxxxxxx", "xxxxYxxxx", 9) < 0);
        FUNC1(FUNC0("xxxxXxxxx", "xxxxYxxxx", 9) < 0);

        FUNC1(FUNC0("xxxxYxxxx", "xxxxYxxxx", 9) == 0);
        FUNC1(FUNC0("xxxxyxxxx", "xxxxxxxxx", 9) > 0);
        FUNC1(FUNC0("xxxxyxxxx", "xxxxXxxxx", 9) > 0);
        FUNC1(FUNC0("xxxxYxxxx", "xxxxxxxxx", 9) > 0);
        FUNC1(FUNC0("xxxxYxxxx", "xxxxXxxxx", 9) > 0);
}