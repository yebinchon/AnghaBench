#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct reader_position {int dummy; } ;
struct TYPE_15__ {struct reader_position position; } ;
typedef  TYPE_1__ xmlreader ;
struct TYPE_16__ {int len; int /*<<< orphan*/  start; int /*<<< orphan*/  str; } ;
typedef  TYPE_2__ strval ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  WC_E_QUOTE ; 
 char const* dblquoteW ; 
 char const* quoteW ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,TYPE_2__*,struct reader_position*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC9(xmlreader *reader)
{
    static const WCHAR encodingW[] = {'e','n','c','o','d','i','n','g',0};
    struct reader_position position;
    strval name, val;
    HRESULT hr;

    if (!FUNC8(reader)) return S_FALSE;

    position = reader->position;
    if (FUNC2(reader, encodingW)) return S_FALSE;
    name.str = FUNC4(reader);
    name.start = FUNC3(reader);
    name.len = 8;
    /* skip 'encoding' */
    FUNC7(reader, 8);

    hr = FUNC6(reader);
    if (FUNC0(hr)) return hr;

    if (FUNC2(reader, quoteW) && FUNC2(reader, dblquoteW))
        return WC_E_QUOTE;
    /* skip "'"|'"' */
    FUNC7(reader, 1);

    hr = FUNC5(reader, &val);
    if (FUNC0(hr)) return hr;

    if (FUNC2(reader, quoteW) && FUNC2(reader, dblquoteW))
        return WC_E_QUOTE;

    /* skip "'"|'"' */
    FUNC7(reader, 1);

    return FUNC1(reader, NULL, &name, NULL, &val, &position, 0);
}