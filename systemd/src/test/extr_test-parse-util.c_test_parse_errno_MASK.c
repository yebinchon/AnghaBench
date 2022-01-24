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
 int EILSEQ ; 
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void) {
        FUNC0(FUNC1("EILSEQ") == EILSEQ);
        FUNC0(FUNC1("EINVAL") == EINVAL);
        FUNC0(FUNC1("0") == 0);
        FUNC0(FUNC1("1") == 1);
        FUNC0(FUNC1("4095") == 4095);

        FUNC0(FUNC1("-1") == -ERANGE);
        FUNC0(FUNC1("-3") == -ERANGE);
        FUNC0(FUNC1("4096") == -ERANGE);

        FUNC0(FUNC1("") == -EINVAL);
        FUNC0(FUNC1("12.3") == -EINVAL);
        FUNC0(FUNC1("123junk") == -EINVAL);
        FUNC0(FUNC1("junk123") == -EINVAL);
        FUNC0(FUNC1("255EILSEQ") == -EINVAL);
        FUNC0(FUNC1("EINVAL12") == -EINVAL);
        FUNC0(FUNC1("-EINVAL") == -EINVAL);
        FUNC0(FUNC1("EINVALaaa") == -EINVAL);
}