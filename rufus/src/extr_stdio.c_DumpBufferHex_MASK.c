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
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 size_t FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

void FUNC3(void *buf, size_t size)
{
	unsigned char* buffer = (unsigned char*)buf;
	size_t i, j, k;
	char line[80] = "";

	for (i=0; i<size; i+=16) {
		if (i!=0)
			FUNC2("%s\n", line);
		line[0] = 0;
		FUNC0(&line[FUNC1(line)], "  %08x  ", (unsigned int)i);
		for(j=0,k=0; k<16; j++,k++) {
			if (i+j < size) {
				FUNC0(&line[FUNC1(line)], "%02x", buffer[i+j]);
			} else {
				FUNC0(&line[FUNC1(line)], "  ");
			}
			FUNC0(&line[FUNC1(line)], " ");
		}
		FUNC0(&line[FUNC1(line)], " ");
		for(j=0,k=0; k<16; j++,k++) {
			if (i+j < size) {
				if ((buffer[i+j] < 32) || (buffer[i+j] > 126)) {
					FUNC0(&line[FUNC1(line)], ".");
				} else {
					FUNC0(&line[FUNC1(line)], "%c", buffer[i+j]);
				}
			}
		}
	}
	FUNC2("%s\n", line);
}