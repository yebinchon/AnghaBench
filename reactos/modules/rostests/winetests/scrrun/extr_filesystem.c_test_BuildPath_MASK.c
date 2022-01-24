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
struct buildpath_test {char* path; char* name; char* result; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__* BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  E_POINTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__**) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__* FUNC2 (char*) ; 
 struct buildpath_test* buildpath_data ; 
 int /*<<< orphan*/  fs3 ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 

__attribute__((used)) static void FUNC6(void)
{
    struct buildpath_test *ptr = buildpath_data;
    BSTR ret, path;
    HRESULT hr;
    int i = 0;

    hr = FUNC0(fs3, NULL, NULL, NULL);
    FUNC4(hr == E_POINTER, "got 0x%08x\n", hr);

    ret = (BSTR)0xdeadbeef;
    hr = FUNC0(fs3, NULL, NULL, &ret);
    FUNC4(hr == S_OK, "got 0x%08x\n", hr);
    FUNC4(*ret == 0, "got %p\n", ret);
    FUNC1(ret);

    ret = (BSTR)0xdeadbeef;
    path = FUNC2("path");
    hr = FUNC0(fs3, path, NULL, &ret);
    FUNC4(hr == S_OK, "got 0x%08x\n", hr);
    FUNC4(!FUNC3(ret, path), "got %s\n", FUNC5(ret));
    FUNC1(ret);
    FUNC1(path);

    ret = (BSTR)0xdeadbeef;
    path = FUNC2("path");
    hr = FUNC0(fs3, NULL, path, &ret);
    FUNC4(hr == S_OK, "got 0x%08x\n", hr);
    FUNC4(!FUNC3(ret, path), "got %s\n", FUNC5(ret));
    FUNC1(ret);
    FUNC1(path);

    while (ptr->path)
    {
        BSTR name, result;

        ret = NULL;
        path = FUNC2(ptr->path);
        name = FUNC2(ptr->name);
        result = FUNC2(ptr->result);
        hr = FUNC0(fs3, path, name, &ret);
        FUNC4(hr == S_OK, "%d: got 0x%08x\n", i, hr);
        if (hr == S_OK)
        {
            FUNC4(!FUNC3(ret, result), "%d: got wrong path %s, expected %s\n", i, FUNC5(ret),
                FUNC5(result));
            FUNC1(ret);
        }
        FUNC1(path);
        FUNC1(name);
        FUNC1(result);

        i++;
        ptr++;
    }
}