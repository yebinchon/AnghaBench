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
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int STGM_CREATE ; 
 int STGM_READ ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_DENY_NONE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int STGM_TRANSACTED ; 
 scalar_t__ STG_E_ACCESSDENIED ; 
 scalar_t__ STG_E_FILEALREADYEXISTS ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC8 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC11(void)
{
    IStorage *stg, *stg2, *stg3;
    IStream *stream;
    HRESULT hr;
    static const WCHAR fileW[] = {'w','i','n','e','t','e','s','t',0};
    static const WCHAR storageW[] = {'s','t','o','r','a','g','e',0};
    static const WCHAR streamW[] = {'s','t','r','e','a','m',0};

    hr = FUNC8( fileW, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, &stg);
    FUNC10(hr == S_OK, "should succeed, res=%x\n", hr);
    if (FUNC7(hr))
    {
        hr = FUNC1( stg, storageW, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, 0, &stg2 );
        FUNC10(hr == S_OK, "should succeed, res=%x\n", hr);
        if (FUNC7(hr))
        {
            hr = FUNC2( stg2, streamW, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, 0, &stream );
            FUNC10(hr == S_OK, "should succeed, res=%x\n", hr);
            if (FUNC7(hr))
                FUNC6(stream);
            FUNC5(stg2);
        }
        FUNC5(stg);
    }

    /* re-open read only */
    hr = FUNC9( fileW, NULL, STGM_TRANSACTED | STGM_SHARE_DENY_NONE | STGM_READ, NULL, 0, &stg);
    FUNC10(hr == S_OK, "should succeed, res=%x\n", hr);
    if (FUNC7(hr))
    {
        hr = FUNC4( stg, storageW, NULL, STGM_SHARE_EXCLUSIVE | STGM_READ, NULL, 0, &stg2 );
        FUNC10(hr == S_OK, "should succeed, res=%x\n", hr);
        if (FUNC7(hr))
        {
            /* CreateStream on read-only storage, name exists */
            hr = FUNC2( stg2, streamW, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READ, 0, 0, &stream );
            FUNC10(hr == STG_E_ACCESSDENIED, "should fail, res=%x\n", hr);
            if (FUNC7(hr))
                FUNC6(stream);

            /* CreateStream on read-only storage, name does not exist */
            hr = FUNC2( stg2, storageW, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READ, 0, 0, &stream );
            FUNC10(hr == STG_E_ACCESSDENIED, "should fail, res=%x\n", hr);
            if (FUNC7(hr))
                FUNC6(stream);

            /* CreateStorage on read-only storage, name exists */
            hr = FUNC1( stg2, streamW, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READ, 0, 0, &stg3 );
            FUNC10(hr == STG_E_FILEALREADYEXISTS, "should fail, res=%x\n", hr);
            if (FUNC7(hr))
                FUNC5(stg3);

            /* CreateStorage on read-only storage, name does not exist */
            hr = FUNC1( stg2, storageW, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READ, 0, 0, &stg3 );
            FUNC10(hr == STG_E_ACCESSDENIED, "should fail, res=%x\n", hr);
            if (FUNC7(hr))
                FUNC5(stg3);

            /* DestroyElement on read-only storage, name exists */
            hr = FUNC3( stg2, streamW );
            FUNC10(hr == STG_E_ACCESSDENIED, "should fail, res=%x\n", hr);

            /* DestroyElement on read-only storage, name does not exist */
            hr = FUNC3( stg2, storageW );
            FUNC10(hr == STG_E_ACCESSDENIED, "should fail, res=%x\n", hr);

            FUNC5(stg2);
        }

        FUNC5(stg);
    }

    FUNC0("winetest");
}