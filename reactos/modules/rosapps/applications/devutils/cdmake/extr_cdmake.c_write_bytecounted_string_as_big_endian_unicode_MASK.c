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
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

__attribute__((used)) static void FUNC2(unsigned bytecount, char *s, char padding)
{
    unsigned wordcount = bytecount / 2;

    while (*s != 0 && wordcount != 0)
    {
        FUNC0(*s++);
        wordcount--;
    }
    while (wordcount != 0)
    {
        FUNC0(padding);
        wordcount--;
    }

    if (bytecount % 2 != 0)
        FUNC1(padding);
}