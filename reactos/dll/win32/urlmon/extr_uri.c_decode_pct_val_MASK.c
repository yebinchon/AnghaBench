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
typedef  char WCHAR ;
typedef  int INT ;

/* Variables and functions */
 int FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 

__attribute__((used)) static WCHAR FUNC2(const WCHAR *ptr) {
    WCHAR ret = '\0';

    if(*ptr == '%' && FUNC1(*(ptr + 1)) && FUNC1(*(ptr + 2))) {
        INT a = FUNC0(*(ptr + 1));
        INT b = FUNC0(*(ptr + 2));

        ret = a << 4;
        ret += b;
    }

    return ret;
}