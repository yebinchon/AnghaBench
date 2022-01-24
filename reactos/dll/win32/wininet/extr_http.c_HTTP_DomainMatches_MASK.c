#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int len; char const* str; } ;
typedef  TYPE_1__ substr_t ;
typedef  int /*<<< orphan*/  localW ;
typedef  char WCHAR ;
typedef  char const* LPCWSTR ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 char* FUNC0 (char const*,char) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int) ; 

__attribute__((used)) static BOOL FUNC3(LPCWSTR server, substr_t domain)
{
    static const WCHAR localW[] = { '<','l','o','c','a','l','>',0 };
    const WCHAR *dot, *ptr;
    int len;

    if(domain.len == sizeof(localW)/sizeof(WCHAR)-1 && !FUNC2(domain.str, localW, domain.len) && !FUNC0(server, '.' ))
        return TRUE;

    if(domain.len && *domain.str != '*')
        return domain.len == FUNC1(server) && !FUNC2(server, domain.str, domain.len);

    if(domain.len < 2 || domain.str[1] != '.')
        return FALSE;

    /* For a hostname to match a wildcard, the last domain must match
     * the wildcard exactly.  E.g. if the wildcard is *.a.b, and the
     * hostname is www.foo.a.b, it matches, but a.b does not.
     */
    dot = FUNC0(server, '.');
    if(!dot)
        return FALSE;

    len = FUNC1(dot + 1);
    if(len < domain.len - 2)
        return FALSE;

    /* The server's domain is longer than the wildcard, so it
     * could be a subdomain.  Compare the last portion of the
     * server's domain.
     */
    ptr = dot + 1 + len - domain.len + 2;
    if(!FUNC2(ptr, domain.str+2, domain.len-2))
        /* This is only a match if the preceding character is
         * a '.', i.e. that it is a matching domain.  E.g.
         * if domain is '*.b.c' and server is 'www.ab.c' they
         * do not match.
         */
        return *(ptr - 1) == '.';

    return len == domain.len-2 && !FUNC2(dot + 1, domain.str + 2, len);
}