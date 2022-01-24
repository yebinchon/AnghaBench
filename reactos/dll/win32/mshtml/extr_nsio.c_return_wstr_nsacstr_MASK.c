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
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsACString ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  NS_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  NS_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static nsresult FUNC6(nsACString *ret_str, const WCHAR *str, int len)
{
    char *stra;
    int lena;

    FUNC0("returning %s\n", FUNC2(str, len));

    if(!*str) {
        FUNC5(ret_str, "");
        return NS_OK;
    }

    lena = FUNC1(CP_UTF8, 0, str, len, NULL, 0, NULL, NULL);
    stra = FUNC3(lena+1);
    if(!stra)
        return NS_ERROR_OUT_OF_MEMORY;

    FUNC1(CP_UTF8, 0, str, len, stra, lena, NULL, NULL);
    stra[lena] = 0;

    FUNC5(ret_str, stra);
    FUNC4(stra);
    return NS_OK;
}