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
 int /*<<< orphan*/  FUNC0 (char*,int,long long) ; 
 scalar_t__ FUNC1 (char*,char*,size_t) ; 
 int FUNC2 (long long,unsigned char*) ; 
 size_t FUNC3 (char*) ; 
 long long FUNC4 (char*,char**,int) ; 

int FUNC5(char *s, size_t len, unsigned char *enc) {
    long long value;
    char *endptr, buf[32];

    /* Check if it's possible to encode this value as a number */
    value = FUNC4(s, &endptr, 10);
    if (endptr[0] != '\0') return 0;
    FUNC0(buf,32,value);

    /* If the number converted back into a string is not identical
     * then it's not possible to encode the string as integer */
    if (FUNC3(buf) != len || FUNC1(buf,s,len)) return 0;

    return FUNC2(value,enc);
}