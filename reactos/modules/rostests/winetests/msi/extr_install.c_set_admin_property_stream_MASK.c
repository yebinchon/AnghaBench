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
typedef  int /*<<< orphan*/  data ;
typedef  int WCHAR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int const*,int,int*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int) ; 
 int STGM_DIRECT ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int STGM_WRITE ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC5 (int*,int /*<<< orphan*/ *,int const,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(LPCSTR file)
{
    IStorage *stg;
    IStream *stm;
    WCHAR fileW[MAX_PATH];
    HRESULT hr;
    DWORD count;
    const DWORD mode = STGM_DIRECT | STGM_READWRITE | STGM_SHARE_EXCLUSIVE;

    /* AdminProperties */
    static const WCHAR stmname[] = {0x41ca,0x4330,0x3e71,0x44b5,0x4233,0x45f5,0x422c,0x4836,0};
    static const WCHAR data[] = {'M','Y','P','R','O','P','=','2','7','1','8',' ',
        'M','y','P','r','o','p','=','4','2',0};

    FUNC4(CP_ACP, 0, file, -1, fileW, MAX_PATH);

    hr = FUNC5(fileW, NULL, mode, NULL, 0, &stg);
    FUNC6(hr == S_OK, "Expected S_OK, got %d\n", hr);
    if (!stg)
        return;

    hr = FUNC0(stg, stmname, STGM_WRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stm);
    FUNC6(hr == S_OK, "Expected S_OK, got %d\n", hr);

    hr = FUNC3(stm, data, sizeof(data), &count);
    FUNC6(hr == S_OK, "Expected S_OK, got %d\n", hr);

    FUNC2(stm);
    FUNC1(stg);
}