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

const char * FUNC2(const char * name) {
	const char * c = name+FUNC1(name);
	if(c>name) {
		if(!FUNC0(*c)) {
			do {
				--c;
				if(FUNC0(*c)) {
					return c+1;
				}
			} while(c>name);
		}
		return c;/* the last path component is the void string*/
	}
	return c;
}