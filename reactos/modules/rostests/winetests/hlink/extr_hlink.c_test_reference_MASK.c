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
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IHlink ;
typedef  int HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int E_NOTIMPL ; 
 scalar_t__ FUNC1 (int) ; 
 int HLINKGETREF_DEFAULT ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHlink ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 

__attribute__((used)) static void FUNC11(void)
{
    HRESULT r;
    IHlink *lnk = NULL;
    IMoniker *mk = NULL;
    const WCHAR url[] = { 'h','t','t','p',':','/','/','w','i','n','e','h','q','.','o','r','g',0 };
    const WCHAR url2[] = { 'h','t','t','p',':','/','/','w','i','n','e','h','q','.','o','r','g','/',0 };
    LPWSTR str = NULL;

    r = FUNC2(url, NULL, NULL, NULL,
                              0, NULL, &IID_IHlink, (LPVOID*) &lnk);
    FUNC10(r == S_OK, "failed to create link\n");
    if (FUNC1(r))
        return;

    r = FUNC4(lnk, HLINKGETREF_DEFAULT, NULL, NULL);
    FUNC10(r == S_OK, "failed\n");

    r = FUNC4(lnk, HLINKGETREF_DEFAULT, &mk, &str);
    FUNC10(r == S_OK, "failed\n");
    FUNC10(mk != NULL, "no moniker\n");
    FUNC10(str == NULL, "string should be null\n");

    r = FUNC8(mk);
    FUNC10( r == 1, "moniker refcount wrong\n");

    r = FUNC5(lnk, -1, &str, NULL);
    FUNC10(r == S_OK, "failed\n");
    FUNC0(str);

    r = FUNC5(lnk, -1, NULL, NULL);
    FUNC10(r == S_OK, "failed, r=%08x\n", r);

    r = FUNC5(lnk, -1, NULL, &str);
    FUNC10(r == S_OK, "failed, r=%08x\n", r);
    FUNC10(str == NULL, "string should be null\n");

    r = FUNC5(lnk, HLINKGETREF_DEFAULT, &str, NULL);
    FUNC10(r == S_OK, "failed\n");
    FUNC10(!FUNC9(str, url2), "url wrong\n");
    FUNC0(str);

    r = FUNC5(lnk, HLINKGETREF_DEFAULT, NULL, NULL);
    FUNC10(r == S_OK, "failed\n");

    r = FUNC5(lnk, HLINKGETREF_DEFAULT, NULL, &str);
    FUNC10(r == S_OK, "failed\n");
    FUNC10(str == NULL, "string should be null\n");

    /* Unimplented functions checks */
    r = FUNC3(lnk, NULL);
    FUNC10(r == E_NOTIMPL, "failed\n");

    r = FUNC7(lnk, NULL);
    FUNC10(r == E_NOTIMPL, "failed\n");

    FUNC6(lnk);
}