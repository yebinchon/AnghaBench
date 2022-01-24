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
typedef  int ULONG_PTR ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 char* FUNC1 (size_t) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static const char *FUNC5( const char *str, int n )
{
    static const char hex[16] = "0123456789abcdef";
    char *dst, *res;
    size_t size;

    if (!((ULONG_PTR)str >> 16))
    {
        if (!str) return "(null)";
        res = FUNC1( 6 );
        FUNC3( res, "#%04x", FUNC0(str) );
        return res;
    }
    if (n == -1) n = FUNC4(str);
    if (n < 0) n = 0;
    size = 10 + FUNC2( 300, n * 4 );
    dst = res = FUNC1( size );
    *dst++ = '"';
    while (n-- > 0 && dst <= res + size - 9)
    {
        unsigned char c = *str++;
        switch (c)
        {
        case '\n': *dst++ = '\\'; *dst++ = 'n'; break;
        case '\r': *dst++ = '\\'; *dst++ = 'r'; break;
        case '\t': *dst++ = '\\'; *dst++ = 't'; break;
        case '"':  *dst++ = '\\'; *dst++ = '"'; break;
        case '\\': *dst++ = '\\'; *dst++ = '\\'; break;
        default:
            if (c >= ' ' && c <= 126)
                *dst++ = c;
            else
            {
                *dst++ = '\\';
                *dst++ = 'x';
                *dst++ = hex[(c >> 4) & 0x0f];
                *dst++ = hex[c & 0x0f];
            }
        }
    }
    *dst++ = '"';
    if (n > 0)
    {
        *dst++ = '.';
        *dst++ = '.';
        *dst++ = '.';
    }
    *dst++ = 0;
    return res;
}