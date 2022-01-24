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
struct HEADER_TYPE {char* value; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  all ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xhr ; 

__attribute__((used)) static void FUNC11(const struct HEADER_TYPE expect[], int num)
{
    int i;
    BSTR key, text, all_header;
    HRESULT hres;
    char all[4096], buf[512];

    all_header = NULL;
    hres = FUNC0(xhr, &all_header);
    FUNC5(hres == S_OK, "getAllResponseHeader failed: %08x\n", hres);
    FUNC5(all_header != NULL, "all_header == NULL\n");

    FUNC3(CP_UTF8, 0, all_header, -1, all, sizeof(all), NULL, NULL);
    FUNC2(all_header);

    for(i = 0; i < num; ++i) {
        text = NULL;
        key = FUNC4(expect[i].key);
        hres = FUNC1(xhr, key, &text);
        FUNC5(hres == S_OK, "getResponseHeader failed, got %08x\n", hres);
        FUNC5(text != NULL, "text == NULL\n");
        FUNC5(!FUNC7(text, expect[i].value),
            "Expect %s: %s, got %s\n", expect[i].key, expect[i].value, FUNC10(text));
        FUNC2(key);
        FUNC2(text);

        FUNC8(buf, expect[i].key);
        FUNC6(buf, ": ");
        FUNC6(buf, expect[i].value);
        FUNC5(FUNC9(all, buf) != NULL, "AllResponseHeaders(%s) don't have expected substr(%s)\n", all, buf);
    }
}