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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t const) ; 
 size_t FUNC2 (char const*) ; 

char * FUNC3 (const char *haystack, const char *needle, size_t len)
{
    FUNC0(needle != NULL);

    const size_t i = FUNC2(needle);
    if (i == 0) /* corner case (if haystack is NULL, memcmp not allowed) */
        return (char *)haystack;

    if( len < i )
      return NULL;

    size_t count = len - i;

    do
    {
      if( FUNC1(haystack, needle, i) == 0 )
        return (char*) haystack;
      haystack++;
    }
    while(count--);

    return NULL;
}