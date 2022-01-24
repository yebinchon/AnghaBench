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
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*) ; 

__attribute__((used)) static void FUNC6(const char *file_name)
{
    char out_name[MAX_PATH];
    const char *test_data, *out_data;
    DWORD test_size, out_size;

    test_size = FUNC2(file_name, &test_data);
    if(!test_size) {
        FUNC3(0, "Could not map file %s: %u\n", file_name, FUNC0());
        return;
    }

    FUNC5(out_name, "%s.exp", file_name);
    out_size = FUNC2(out_name, &out_data);
    if(!out_size) {
        FUNC3(0, "Could not map file %s: %u\n", out_name, FUNC0());
        FUNC1(test_data);
        return;
    }

    FUNC4(test_data, test_size, out_data, out_size);

    FUNC1(test_data);
    FUNC1(out_data);
}