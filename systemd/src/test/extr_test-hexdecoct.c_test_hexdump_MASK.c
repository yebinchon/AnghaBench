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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 unsigned int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC2(void) {
        uint8_t data[146];
        unsigned i;

        FUNC1(stdout, NULL, 0);
        FUNC1(stdout, "", 0);
        FUNC1(stdout, "", 1);
        FUNC1(stdout, "x", 1);
        FUNC1(stdout, "x", 2);
        FUNC1(stdout, "foobar", 7);
        FUNC1(stdout, "f\nobar", 7);
        FUNC1(stdout, "xxxxxxxxxxxxxxxxxxxxyz", 23);

        for (i = 0; i < FUNC0(data); i++)
                data[i] = i*2;

        FUNC1(stdout, data, sizeof(data));
}