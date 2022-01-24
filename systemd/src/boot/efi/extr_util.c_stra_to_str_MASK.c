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
typedef  int UINTN ;
typedef  scalar_t__ INTN ;
typedef  int /*<<< orphan*/  CHAR8 ;
typedef  char CHAR16 ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 

CHAR16 *FUNC3(CHAR8 *stra) {
        UINTN strlen;
        UINTN len;
        UINTN i;
        CHAR16 *str;

        len = FUNC1(stra);
        str = FUNC0((len + 1) * sizeof(CHAR16));

        strlen = 0;
        i = 0;
        while (i < len) {
                INTN utf8len;

                utf8len = FUNC2(stra + i, str + strlen);
                if (utf8len <= 0) {
                        /* invalid utf8 sequence, skip the garbage */
                        i++;
                        continue;
                }

                strlen++;
                i += utf8len;
        }
        str[strlen] = '\0';
        return str;
}