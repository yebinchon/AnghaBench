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
struct TYPE_3__ {scalar_t__ expected; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  IUri ;
typedef  scalar_t__ HRESULT ;
typedef  size_t DWORD ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  http_urlW ; 
 TYPE_1__* invalid_flag_tests ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC3(void) {
    DWORD i;

    for(i = 0; i < FUNC0(invalid_flag_tests); ++i) {
        HRESULT hr;
        IUri *uri = (void*) 0xdeadbeef;

        hr = FUNC2(http_urlW, invalid_flag_tests[i].flags, 0, &uri);
        FUNC1(hr == invalid_flag_tests[i].expected, "Error: CreateUri returned 0x%08x, expected 0x%08x, flags=0x%08x\n",
                hr, invalid_flag_tests[i].expected, invalid_flag_tests[i].flags);
        FUNC1(uri == NULL, "Error: expected the IUri to be NULL, but it was %p instead\n", uri);
    }
}