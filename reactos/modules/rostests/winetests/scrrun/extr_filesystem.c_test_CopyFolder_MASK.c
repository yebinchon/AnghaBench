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
typedef  float WCHAR ;
typedef  scalar_t__ HRESULT ;
typedef  float* BSTR ;

/* Variables and functions */
 scalar_t__ CTL_E_FILEALREADYEXISTS ; 
 scalar_t__ CTL_E_FILENOTFOUND ; 
 scalar_t__ CTL_E_PATHNOTFOUND ; 
 int FUNC0 (float const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (float*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,float*,float*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,float*,float*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,float*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,float*,int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int MAX_PATH ; 
 int FUNC6 (float*) ; 
 scalar_t__ S_OK ; 
 float* FUNC7 (float const*) ; 
 int /*<<< orphan*/  FUNC8 (float*) ; 
 int /*<<< orphan*/  VARIANT_FALSE ; 
 int /*<<< orphan*/  VARIANT_TRUE ; 
 int FUNC9 (float*) ; 
 int /*<<< orphan*/  FUNC10 (float const*,float const*,float*) ; 
 int /*<<< orphan*/  fs3 ; 
 int /*<<< orphan*/  FUNC11 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (float*) ; 

__attribute__((used)) static void FUNC14(void)
{
    static const WCHAR filesystem3_dir[] = {'f','i','l','e','s','y','s','t','e','m','3','_','t','e','s','t',0};
    static const WCHAR s1[] = {'s','r','c','1',0};
    static const WCHAR s[] = {'s','r','c','*',0};
    static const WCHAR d[] = {'d','s','t',0};
    static const WCHAR empty[] = {0};

    WCHAR tmp[MAX_PATH];
    BSTR bsrc, bdst;
    HRESULT hr;

    if(!FUNC0(filesystem3_dir, NULL)) {
        FUNC12("can't create temporary directory\n");
        return;
    }

    FUNC10(filesystem3_dir, s1, tmp);
    bsrc = FUNC7(tmp);
    FUNC10(filesystem3_dir, d, tmp);
    bdst = FUNC7(tmp);
    hr = FUNC2(fs3, bsrc, bdst, VARIANT_TRUE);
    FUNC11(hr == CTL_E_FILENOTFOUND, "CopyFile returned %x, expected CTL_E_FILENOTFOUND\n", hr);

    hr = FUNC3(fs3, bsrc, bdst, VARIANT_TRUE);
    FUNC11(hr == CTL_E_PATHNOTFOUND, "CopyFolder returned %x, expected CTL_E_PATHNOTFOUND\n", hr);

    FUNC11(FUNC9(bsrc), "can't create %s file\n", FUNC13(bsrc));
    hr = FUNC2(fs3, bsrc, bdst, VARIANT_TRUE);
    FUNC11(hr == S_OK, "CopyFile returned %x, expected S_OK\n", hr);

    hr = FUNC3(fs3, bsrc, bdst, VARIANT_TRUE);
    FUNC11(hr == CTL_E_PATHNOTFOUND, "CopyFolder returned %x, expected CTL_E_PATHNOTFOUND\n", hr);

    hr = FUNC4(fs3, bsrc, VARIANT_FALSE);
    FUNC11(hr == S_OK, "DeleteFile returned %x, expected S_OK\n", hr);

    FUNC11(FUNC0(bsrc, NULL), "can't create %s\n", FUNC13(bsrc));
    hr = FUNC2(fs3, bsrc, bdst, VARIANT_TRUE);
    FUNC11(hr == CTL_E_FILENOTFOUND, "CopyFile returned %x, expected CTL_E_FILENOTFOUND\n", hr);

    hr = FUNC3(fs3, bsrc, bdst, VARIANT_TRUE);
    FUNC11(hr == CTL_E_FILEALREADYEXISTS, "CopyFolder returned %x, expected CTL_E_FILEALREADYEXISTS\n", hr);

    hr = FUNC4(fs3, bdst, VARIANT_TRUE);
    FUNC11(hr == S_OK, "DeleteFile returned %x, expected S_OK\n", hr);

    hr = FUNC3(fs3, bsrc, bdst, VARIANT_TRUE);
    FUNC11(hr == S_OK, "CopyFolder returned %x, expected S_OK\n", hr);

    hr = FUNC3(fs3, bsrc, bdst, VARIANT_TRUE);
    FUNC11(hr == S_OK, "CopyFolder returned %x, expected S_OK\n", hr);
    FUNC10(tmp, s1, tmp);
    FUNC11(FUNC1(tmp) == INVALID_FILE_ATTRIBUTES,
            "%s file exists\n", FUNC13(tmp));

    FUNC10(filesystem3_dir, d, tmp);
    FUNC10(tmp, empty, tmp);
    FUNC8(bdst);
    bdst = FUNC7(tmp);
    hr = FUNC3(fs3, bsrc, bdst, VARIANT_TRUE);
    FUNC11(hr == S_OK, "CopyFolder returned %x, expected S_OK\n", hr);
    FUNC10(tmp, s1, tmp);
    FUNC11(FUNC1(tmp) != INVALID_FILE_ATTRIBUTES,
            "%s directory doesn't exist\n", FUNC13(tmp));
    FUNC11(FUNC6(tmp), "can't remove %s directory\n", FUNC13(tmp));
    FUNC10(filesystem3_dir, d, tmp);
    FUNC8(bdst);
    bdst = FUNC7(tmp);


    FUNC10(filesystem3_dir, s, tmp);
    FUNC8(bsrc);
    bsrc = FUNC7(tmp);
    hr = FUNC3(fs3, bsrc, bdst, VARIANT_TRUE);
    FUNC11(hr == S_OK, "CopyFolder returned %x, expected S_OK\n", hr);
    FUNC10(filesystem3_dir, d, tmp);
    FUNC10(tmp, s1, tmp);
    FUNC11(FUNC1(tmp) != INVALID_FILE_ATTRIBUTES,
            "%s directory doesn't exist\n", FUNC13(tmp));

    hr = FUNC5(fs3, bdst, VARIANT_FALSE);
    FUNC11(hr == S_OK, "DeleteFolder returned %x, expected S_OK\n", hr);

    hr = FUNC3(fs3, bsrc, bdst, VARIANT_TRUE);
    FUNC11(hr == CTL_E_PATHNOTFOUND, "CopyFolder returned %x, expected CTL_E_PATHNOTFOUND\n", hr);

    FUNC10(filesystem3_dir, s1, tmp);
    FUNC8(bsrc);
    bsrc = FUNC7(tmp);
    FUNC10(tmp, s1, tmp);
    FUNC11(FUNC9(tmp), "can't create %s file\n", FUNC13(tmp));
    hr = FUNC3(fs3, bsrc, bdst, VARIANT_FALSE);
    FUNC11(hr == S_OK, "CopyFolder returned %x, expected S_OK\n", hr);

    hr = FUNC3(fs3, bsrc, bdst, VARIANT_FALSE);
    FUNC11(hr == CTL_E_FILEALREADYEXISTS, "CopyFolder returned %x, expected CTL_E_FILEALREADYEXISTS\n", hr);

    hr = FUNC3(fs3, bsrc, bdst, VARIANT_TRUE);
    FUNC11(hr == S_OK, "CopyFolder returned %x, expected S_OK\n", hr);
    FUNC8(bsrc);
    FUNC8(bdst);

    bsrc = FUNC7(filesystem3_dir);
    hr = FUNC5(fs3, bsrc, VARIANT_FALSE);
    FUNC11(hr == S_OK, "DeleteFolder returned %x, expected S_OK\n", hr);
    FUNC8(bsrc);
}