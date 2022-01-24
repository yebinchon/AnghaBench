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
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 void* FUNC1 (unsigned char*) ; 
 int FUNC2 (unsigned char const*) ; 

unsigned char *FUNC3 (unsigned char *dst, const unsigned char *src, size_t n)
{
    int c;
    unsigned char *save = dst;

    while ((c = FUNC2 (dst)))
	dst = FUNC1 (dst);

    while (n-- > 0 && (c = FUNC2 (src))) {

	FUNC0 (dst, c);

	dst = FUNC1 (dst);

	src = FUNC1 ((unsigned char *) src);

    }

    *dst = '\0';

    return save;
}