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
typedef  int /*<<< orphan*/  urlW ;
typedef  unsigned char WCHAR ;
typedef  unsigned char* LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 unsigned char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned char const*,int) ; 

__attribute__((used)) static LPWSTR FUNC3(LPCWSTR val)
{
    WCHAR *ret, *ptr;

    static const WCHAR urlW[] = {'u','r','l','('};

    if(FUNC2(val, urlW, sizeof(urlW)/sizeof(WCHAR)) || !FUNC1(val, '\\'))
        return NULL;

    ret = FUNC0(val);

    for(ptr = ret; *ptr; ptr++) {
        if(*ptr == '\\')
            *ptr = '/';
    }

    return ret;
}