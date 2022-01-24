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
typedef  char UINTN ;
typedef  char CHAR16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 

__attribute__((used)) static UINTN FUNC1(CHAR16 c) {
        if (c == '\0')
                return 0;
        if (FUNC0(c))
                return 0;
        else if ((c >= 'a') && (c <= 'z'))
                return c;
        else
                return c + 0x10000;
}