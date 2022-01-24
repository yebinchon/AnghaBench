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
 scalar_t__ FUNC0 (char const) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

char *
FUNC4(const char *str, int len, char *target) {
    char *ret, *out;
    const char *in;

    if (str == NULL)
	return(NULL);
    if (len <= 0) len = FUNC1(str);
    if (len < 0) return(NULL);

    if (target == NULL) {
	ret = (char *) FUNC2(len + 1);
	if (ret == NULL) {
            FUNC3("unescaping URI value\n");
	    return(NULL);
	}
    } else
	ret = target;
    in = str;
    out = ret;
    while(len > 0) {
	if ((len > 2) && (*in == '%') && (FUNC0(in[1])) && (FUNC0(in[2]))) {
	    in++;
	    if ((*in >= '0') && (*in <= '9'))
	        *out = (*in - '0');
	    else if ((*in >= 'a') && (*in <= 'f'))
	        *out = (*in - 'a') + 10;
	    else if ((*in >= 'A') && (*in <= 'F'))
	        *out = (*in - 'A') + 10;
	    in++;
	    if ((*in >= '0') && (*in <= '9'))
	        *out = *out * 16 + (*in - '0');
	    else if ((*in >= 'a') && (*in <= 'f'))
	        *out = *out * 16 + (*in - 'a') + 10;
	    else if ((*in >= 'A') && (*in <= 'F'))
	        *out = *out * 16 + (*in - 'A') + 10;
	    in++;
	    len -= 3;
	    out++;
	} else {
	    *out++ = *in++;
	    len--;
	}
    }
    *out = 0;
    return(ret);
}