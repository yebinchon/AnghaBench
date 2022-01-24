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
typedef  int /*<<< orphan*/  nsAString ;
typedef  char PRUnichar ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,int) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,char const**) ; 

__attribute__((used)) static HRESULT FUNC4(const nsAString *nsstr, BSTR *ret_ptr)
{
    const PRUnichar *str, *ptr, *end = NULL;
    BSTR ret;

    FUNC3(nsstr, &str);

    for(ptr = str; FUNC2(*ptr); ptr++);
    if(*ptr == '.') {
        for(end = ptr++; FUNC2(*ptr); ptr++);
        if(*ptr)
            end = NULL;
    }

    ret = end ? FUNC1(str, end-str) : FUNC0(str);

    *ret_ptr = ret;
    return ret ? S_OK : E_OUTOFMEMORY;
}