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
struct inf_file {int dummy; } ;
typedef  char WCHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int MAX_STRING_LEN ; 
 char* FUNC0 (struct inf_file const*,char const*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC2( const struct inf_file *file, const WCHAR *text,
                                          WCHAR *buffer, unsigned int size )
{
    const WCHAR *start, *subst, *p;
    unsigned int len, total = 0;
    BOOL inside = FALSE;

    if (!buffer) size = MAX_STRING_LEN + 1;
    for (p = start = text; *p; p++)
    {
        if (*p != '%') continue;
        inside = !inside;
        if (inside)  /* start of a %xx% string */
        {
            len = p - start;
            if (len > size - 1) len = size - 1;
            if (buffer) FUNC1( buffer + total, start, len * sizeof(WCHAR) );
            total += len;
            size -= len;
            start = p;
        }
        else /* end of the %xx% string, find substitution */
        {
            len = p - start - 1;
            subst = FUNC0( file, start + 1, &len, p[1] == '\\' );
            if (!subst)
            {
                subst = start;
                len = p - start + 1;
            }
            if (len > size - 1) len = size - 1;
            if (buffer) FUNC1( buffer + total, subst, len * sizeof(WCHAR) );
            total += len;
            size -= len;
            start = p + 1;
        }
    }

    if (start != p) /* unfinished string, copy it */
    {
        len = p - start;
        if (len > size - 1) len = size - 1;
        if (buffer) FUNC1( buffer + total, start, len * sizeof(WCHAR) );
        total += len;
    }
    if (buffer && size) buffer[total] = 0;
    return total;
}