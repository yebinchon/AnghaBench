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
typedef  scalar_t__ xmlChar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__* FUNC3 (scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__ const*,scalar_t__) ; 
 scalar_t__* FUNC5 (scalar_t__ const*) ; 
 int FUNC6 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

xmlChar *
FUNC8(const xmlChar *str, const xmlChar *list) {
    xmlChar *ret, ch;
    xmlChar *temp;
    const xmlChar *in;
    int len, out;

    if (str == NULL)
	return(NULL);
    if (str[0] == 0)
	return(FUNC5(str));
    len = FUNC6(str);
    if (!(len > 0)) return(NULL);

    len += 20;
    ret = (xmlChar *) FUNC2(len);
    if (ret == NULL) {
        FUNC7("escaping URI value\n");
	return(NULL);
    }
    in = (const xmlChar *) str;
    out = 0;
    while(*in != 0) {
	if (len - out <= 3) {
            temp = FUNC3(ret, &len);
	    if (temp == NULL) {
                FUNC7("escaping URI value\n");
		FUNC1(ret);
		return(NULL);
	    }
	    ret = temp;
	}

	ch = *in;

	if ((ch != '@') && (!FUNC0(ch)) && (!FUNC4(list, ch))) {
	    unsigned char val;
	    ret[out++] = '%';
	    val = ch >> 4;
	    if (val <= 9)
		ret[out++] = '0' + val;
	    else
		ret[out++] = 'A' + val - 0xA;
	    val = ch & 0xF;
	    if (val <= 9)
		ret[out++] = '0' + val;
	    else
		ret[out++] = 'A' + val - 0xA;
	    in++;
	} else {
	    ret[out++] = *in++;
	}

    }
    ret[out] = 0;
    return(ret);
}