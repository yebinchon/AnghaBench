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
typedef  int /*<<< orphan*/  LPOLESTR ;
typedef  int /*<<< orphan*/ * HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  LANG_ARABIC ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int /*<<< orphan*/  LANG_POLISH ; 
 int /*<<< orphan*/  LANG_RUSSIAN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SORT_DEFAULT ; 
 int /*<<< orphan*/  SUBLANG_ARABIC_EGYPT ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 int /*<<< orphan*/  SUBLANG_ENGLISH_US ; 
 int /*<<< orphan*/ * S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
    LPOLESTR *str, *str2;
    HRESULT hr;

    str = (void *)0xdeadbeef;
    hr = FUNC0(0, &str);
    FUNC3(hr == S_OK, "Unexpected return value %08x\n", hr);
    FUNC3(str == NULL, "Got %p\n", str);

    str = (void *)0xdeadbeef;
    hr = FUNC0(FUNC2(FUNC1(LANG_ENGLISH, SUBLANG_ENGLISH_US), SORT_DEFAULT), &str);
    FUNC3(hr == S_OK, "Unexpected return value %08x\n", hr);
    FUNC3(str == NULL, "Got %p\n", str);

    str = NULL;
    hr = FUNC0(FUNC2(FUNC1(LANG_ARABIC, SUBLANG_ARABIC_EGYPT), SORT_DEFAULT), &str);
    FUNC3(hr == S_OK, "Unexpected return value %08x\n", hr);
    FUNC3(str != NULL, "Got %p\n", str);

    str2 = NULL;
    hr = FUNC0(FUNC2(FUNC1(LANG_ARABIC, SUBLANG_ARABIC_EGYPT), SORT_DEFAULT), &str2);
    FUNC3(hr == S_OK, "Unexpected return value %08x\n", hr);
    FUNC3(str2 == str, "Got %p\n", str2);

    str = NULL;
    hr = FUNC0(FUNC2(FUNC1(LANG_RUSSIAN, SUBLANG_DEFAULT), SORT_DEFAULT), &str);
    FUNC3(hr == S_OK, "Unexpected return value %08x\n", hr);
    FUNC3(str != NULL, "Got %p\n", str);

    str = NULL;
    hr = FUNC0(FUNC2(FUNC1(LANG_POLISH, SUBLANG_DEFAULT), SORT_DEFAULT), &str);
    FUNC3(hr == S_OK, "Unexpected return value %08x\n", hr);
    FUNC3(str != NULL, "Got %p\n", str);
}