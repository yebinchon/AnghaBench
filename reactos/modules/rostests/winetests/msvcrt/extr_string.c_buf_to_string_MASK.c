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
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static char *FUNC2(const unsigned char *bin, int len, int nr)
{
    static char buf[2][1024];
    char *w = buf[nr];
    int i;

    for (i = 0; i < len; i++)
    {
        FUNC0(w, "%02x ", (unsigned char)bin[i]);
        w += FUNC1(w);
    }
    return buf[nr];
}