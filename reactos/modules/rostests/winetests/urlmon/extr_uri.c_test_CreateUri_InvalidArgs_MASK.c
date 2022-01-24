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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALIDARG ; 
 char const* http_urlW ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC2(void) {
    HRESULT hr;
    IUri *uri = (void*) 0xdeadbeef;

    const WCHAR invalidW[] = {'i','n','v','a','l','i','d',0};
    static const WCHAR emptyW[] = {0};

    hr = FUNC1(http_urlW, 0, 0, NULL);
    FUNC0(hr == E_INVALIDARG, "Error: CreateUri returned 0x%08x, expected 0x%08x\n", &hr, E_INVALIDARG);

    hr = FUNC1(NULL, 0, 0, &uri);
    FUNC0(hr == E_INVALIDARG, "Error: CreateUri returned 0x%08x, expected 0x%08x\n", &hr, E_INVALIDARG);
    FUNC0(uri == NULL, "Error: Expected the IUri to be NULL, but it was %p instead\n", uri);

    uri = (void*) 0xdeadbeef;
    hr = FUNC1(invalidW, 0, 0, &uri);
    FUNC0(hr == E_INVALIDARG, "Error: CreateUri returned 0x%08x, expected 0x%08x.\n", &hr, E_INVALIDARG);
    FUNC0(uri == NULL, "Error: Expected the IUri to be NULL, but it was %p instead\n", uri);

    uri = (void*) 0xdeadbeef;
    hr = FUNC1(emptyW, 0, 0, &uri);
    FUNC0(hr == E_INVALIDARG, "Error: CreateUri returned 0x%08x, expected 0x%08x.\n", &hr, E_INVALIDARG);
    FUNC0(uri == NULL, "Error: Expected the IUri to be NULL, but it was %p instead\n", uri);
}