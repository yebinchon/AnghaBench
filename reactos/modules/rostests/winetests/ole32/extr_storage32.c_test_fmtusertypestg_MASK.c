#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  statstg ;
typedef  float WCHAR ;
struct TYPE_6__ {int /*<<< orphan*/  pwcsName; } ;
typedef  TYPE_1__ STATSTG ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  IEnumSTATSTG ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int STGM_CREATE ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC7 (float const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,float*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,float const*) ; 

__attribute__((used)) static void FUNC13(void)
{
    IStorage *stg;
    IEnumSTATSTG *stat;
    HRESULT hr;
    static const char fileA[]  = {'f','m','t','t','e','s','t',0};
    static const WCHAR fileW[] = {'f','m','t','t','e','s','t',0};
    static WCHAR userTypeW[] = {'S','t','g','U','s','r','T','y','p','e',0};
    static const WCHAR strmNameW[] = {1,'C','o','m','p','O','b','j',0};
    static const STATSTG statstg_null;

    hr = FUNC7( fileW, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, &stg);
    FUNC11(hr == S_OK, "should succeed, res=%x\n", hr);

    if (FUNC6(hr))
    {
        /* try to write the stream */
        hr = FUNC8(stg, 0, userTypeW);
        FUNC11(hr == S_OK, "should succeed, res=%x\n", hr);

        /* check that the stream was created */
        hr = FUNC4(stg, 0, NULL, 0, &stat);
        FUNC11(hr == S_OK, "should succeed, res=%x\n", hr);
        if (FUNC6(hr))
        {
            BOOL found = FALSE;
            STATSTG statstg;
            DWORD got;
            FUNC10(&statstg, 0xad, sizeof(statstg));
            while ((hr = FUNC2(stat, 1, &statstg, &got)) == S_OK && got == 1)
            {
                if (FUNC12(statstg.pwcsName, strmNameW) == 0)
                    found = TRUE;
                else
                    FUNC11(0, "found unexpected stream or storage\n");
                FUNC0(statstg.pwcsName);
            }
            FUNC11(FUNC9(&statstg, &statstg_null, sizeof(statstg)) == 0, "statstg is not zeroed\n");
            FUNC11(found == TRUE, "expected storage to contain stream \\0001CompObj\n");
            FUNC3(stat);
        }

        /* re-write the stream */
        hr = FUNC8(stg, 0, userTypeW);
        FUNC11(hr == S_OK, "should succeed, res=%x\n", hr);

        /* check that the stream is still there */
        hr = FUNC4(stg, 0, NULL, 0, &stat);
        FUNC11(hr == S_OK, "should succeed, res=%x\n", hr);
        if (FUNC6(hr))
        {
            BOOL found = FALSE;
            STATSTG statstg;
            DWORD got;
            FUNC10(&statstg, 0xad, sizeof(statstg));
            while ((hr = FUNC2(stat, 1, &statstg, &got)) == S_OK && got == 1)
            {
                if (FUNC12(statstg.pwcsName, strmNameW) == 0)
                    found = TRUE;
                else
                    FUNC11(0, "found unexpected stream or storage\n");
                FUNC0(statstg.pwcsName);
            }
            FUNC11(FUNC9(&statstg, &statstg_null, sizeof(statstg)) == 0, "statstg is not zeroed\n");
            FUNC11(found == TRUE, "expected storage to contain stream \\0001CompObj\n");
            FUNC3(stat);
        }

        FUNC5(stg);
        FUNC1( fileA );
    }
}