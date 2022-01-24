#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct reader_position {int dummy; } ;
struct TYPE_10__ {struct reader_position position; } ;
typedef  TYPE_1__ xmlreader ;
typedef  int /*<<< orphan*/  strval ;
typedef  char WCHAR ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WC_E_QUOTE ; 
 int /*<<< orphan*/  WC_E_XMLDECL ; 
 char const* dblquoteW ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 char const* quoteW ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct reader_position*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char const*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC10(xmlreader *reader)
{
    static const WCHAR standaloneW[] = {'s','t','a','n','d','a','l','o','n','e',0};
    static const WCHAR yesW[] = {'y','e','s',0};
    static const WCHAR noW[] = {'n','o',0};
    struct reader_position position;
    strval name, val;
    UINT start;
    HRESULT hr;

    if (!FUNC9(reader)) return S_FALSE;

    position = reader->position;
    if (FUNC4(reader, standaloneW)) return S_FALSE;
    FUNC6(FUNC5(reader), 10, &name);
    /* skip 'standalone' */
    FUNC8(reader, 10);

    hr = FUNC7(reader);
    if (FUNC0(hr)) return hr;

    if (FUNC4(reader, quoteW) && FUNC4(reader, dblquoteW))
        return WC_E_QUOTE;
    /* skip "'"|'"' */
    FUNC8(reader, 1);

    if (FUNC4(reader, yesW) && FUNC4(reader, noW))
        return WC_E_XMLDECL;

    start = FUNC5(reader);
    /* skip 'yes'|'no' */
    FUNC8(reader, FUNC4(reader, yesW) ? 2 : 3);
    FUNC6(start, FUNC5(reader)-start, &val);
    FUNC1("standalone=%s\n", FUNC2(reader, &val));

    if (FUNC4(reader, quoteW) && FUNC4(reader, dblquoteW))
        return WC_E_QUOTE;
    /* skip "'"|'"' */
    FUNC8(reader, 1);

    return FUNC3(reader, NULL, &name, NULL, &val, &position, 0);
}