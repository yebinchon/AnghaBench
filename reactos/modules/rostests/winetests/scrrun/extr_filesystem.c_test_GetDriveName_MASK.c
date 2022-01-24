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
struct getdrivename_test {int /*<<< orphan*/ * drive; scalar_t__* path; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  E_POINTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fs3 ; 
 struct getdrivename_test* getdrivenametestdata ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void)
{
    const struct getdrivename_test *ptr = getdrivenametestdata;
    HRESULT hr;
    BSTR name;

    hr = FUNC0(fs3, NULL, NULL);
    FUNC4(hr == E_POINTER, "got 0x%08x\n", hr);

    name = (void*)0xdeadbeef;
    hr = FUNC0(fs3, NULL, &name);
    FUNC4(hr == S_OK, "got 0x%08x\n", hr);
    FUNC4(name == NULL, "got %p\n", *name);

    while (*ptr->path) {
        BSTR path = FUNC1(ptr->path);
        name = (void*)0xdeadbeef;
        hr = FUNC0(fs3, path, &name);
        FUNC4(hr == S_OK, "got 0x%08x\n", hr);
        if (name)
            FUNC4(!FUNC3(ptr->drive, name), "got %s, expected %s\n", FUNC5(name), FUNC5(ptr->drive));
        else
            FUNC4(!*ptr->drive, "got %s, expected %s\n", FUNC5(name), FUNC5(ptr->drive));
        FUNC2(path);
        FUNC2(name);
        ptr++;
    }
}