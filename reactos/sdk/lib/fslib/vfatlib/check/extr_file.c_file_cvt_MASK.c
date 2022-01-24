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
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,unsigned char) ; 
 unsigned char FUNC3 (unsigned char) ; 

int FUNC4(unsigned char *name, unsigned char *fixed)
{
    unsigned char c;
    int size, ext, cnt;

    size = 8;
    ext = 0;
    while (*name) {
	c = *name;
	if (c < ' ' || c > 0x7e || FUNC2("*?<>|\"/", c)) {
	    FUNC1("Invalid character in name. Use \\ooo for special "
		   "characters.\n");
	    return 0;
	}
	if (c == '.') {
	    if (ext) {
		FUNC1("Duplicate dots in name.\n");
		return 0;
	    }
	    while (size--)
		*fixed++ = ' ';
	    size = 3;
	    ext = 1;
	    name++;
	    continue;
	}
	if (c == '\\') {
	    c = 0;
	    name++;
	    for (cnt = 3; cnt; cnt--) {
		if (*name < '0' || *name > '7') {
		    FUNC1("Expected three octal digits.\n");
		    return 0;
		}
		c = c * 8 + *name++ - '0';
	    }
	    name--;
	}
	if (FUNC0(c))
	    c = FUNC3(c);
	if (size) {
	    *fixed++ = c;
	    size--;
	}
	name++;
    }
    if (*name || size == 8)
	return 0;
    if (!ext) {
	while (size--)
	    *fixed++ = ' ';
	size = 3;
    }
    while (size--)
	*fixed++ = ' ';
    return 1;
}