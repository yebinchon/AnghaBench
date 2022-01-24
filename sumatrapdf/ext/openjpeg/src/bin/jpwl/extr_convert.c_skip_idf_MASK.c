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
 scalar_t__ FUNC0 (char) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static char *FUNC3(char *start, char out_idf[256])
{
    char *s;
    char c;

    s = FUNC1(start);
    if (s == NULL) {
        return NULL;
    }
    start = s;

    while (*s) {
        if (FUNC0(*s) || *s == '_') {
            ++s;
            continue;
        }
        break;
    }
    c = *s;
    *s = 0;
    FUNC2(out_idf, start, 255);
    *s = c;
    return s;
}