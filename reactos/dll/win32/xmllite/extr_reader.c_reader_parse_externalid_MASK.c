#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct reader_position {int dummy; } ;
struct TYPE_9__ {struct reader_position position; } ;
typedef  TYPE_1__ xmlreader ;
typedef  int /*<<< orphan*/  strval ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  WC_E_WHITESPACE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct reader_position*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static HRESULT FUNC9(xmlreader *reader)
{
    static WCHAR systemW[] = {'S','Y','S','T','E','M',0};
    static WCHAR publicW[] = {'P','U','B','L','I','C',0};
    struct reader_position position = reader->position;
    strval name, sys;
    HRESULT hr;
    int cnt;

    if (!FUNC2(reader, publicW)) {
        strval pub;

        /* public id */
        FUNC6(reader, 6);
        cnt = FUNC7(reader);
        if (!cnt) return WC_E_WHITESPACE;

        hr = FUNC4(reader, &pub);
        if (FUNC0(hr)) return hr;

        FUNC3(publicW, FUNC8(publicW), &name);
        hr = FUNC1(reader, NULL, &name, NULL, &pub, &position, 0);
        if (FUNC0(hr)) return hr;

        cnt = FUNC7(reader);
        if (!cnt) return S_OK;

        /* optional system id */
        hr = FUNC5(reader, &sys);
        if (FUNC0(hr)) return S_OK;

        FUNC3(systemW, FUNC8(systemW), &name);
        hr = FUNC1(reader, NULL, &name, NULL, &sys, &position, 0);
        if (FUNC0(hr)) return hr;

        return S_OK;
    } else if (!FUNC2(reader, systemW)) {
        /* system id */
        FUNC6(reader, 6);
        cnt = FUNC7(reader);
        if (!cnt) return WC_E_WHITESPACE;

        hr = FUNC5(reader, &sys);
        if (FUNC0(hr)) return hr;

        FUNC3(systemW, FUNC8(systemW), &name);
        return FUNC1(reader, NULL, &name, NULL, &sys, &position, 0);
    }

    return S_FALSE;
}