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
typedef  int mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,int*) ; 

__attribute__((used)) static void FUNC2(void) {
        mode_t m;

        FUNC0(FUNC1("-1", &m) < 0);
        FUNC0(FUNC1("", &m) < 0);
        FUNC0(FUNC1("888", &m) < 0);
        FUNC0(FUNC1("77777", &m) < 0);

        FUNC0(FUNC1("544", &m) >= 0 && m == 0544);
        FUNC0(FUNC1("777", &m) >= 0 && m == 0777);
        FUNC0(FUNC1("7777", &m) >= 0 && m == 07777);
        FUNC0(FUNC1("0", &m) >= 0 && m == 0);
}