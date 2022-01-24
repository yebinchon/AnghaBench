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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 char* FUNC0 (int,int) ; 
 char* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static void FUNC5(void) {
        static const uint8_t zero[997] = { };
        char *t;

        t = FUNC1(17, 512);
        FUNC2(!((uintptr_t)t & 0xff));
        FUNC4(t, 17);

        t = FUNC0(997, 1024);
        FUNC2(!((uintptr_t)t & 0x1ff));
        FUNC2(!FUNC3(t, zero, 997));
}