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
        CHAR16 *str;
        UINTN strlen;
        UINTN len;
        UINTN i;

        len = FUNC1(stra);
        str = FUNC0((len + 2) * sizeof(CHAR16));

        str[0] = '\\';
        strlen = 1;
        i = 0;
        while (i < len) {
                INTN utf8len;

                utf8len = FUNC2(stra + i, str + strlen);
                if (utf8len <= 0) {
                        /* invalid utf8 sequence, skip the garbage */
                        i++;
                        continue;
                }

                if (str[strlen] == '/')
                        str[strlen] = '\\';
                if (str[strlen] == '\\' && str[strlen-1] == '\\') {
                        /* skip double slashes */
                        i += utf8len;
                        continue;
                }

                strlen++;
                i += utf8len;
        }
        str[strlen] = '\0';
        return str;
}