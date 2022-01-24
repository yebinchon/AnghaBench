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
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WC_E_QUOTE ; 
 int /*<<< orphan*/  WC_E_WHITESPACE ; 
 int /*<<< orphan*/  WC_E_XMLDECL ; 
 char const* dblquoteW ; 
 char const* quoteW ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct reader_position*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC9(xmlreader *reader)
{
    static const WCHAR versionW[] = {'v','e','r','s','i','o','n',0};
    struct reader_position position;
    strval val, name;
    HRESULT hr;

    if (!FUNC8(reader)) return WC_E_WHITESPACE;

    position = reader->position;
    if (FUNC2(reader, versionW)) return WC_E_XMLDECL;
    FUNC4(FUNC3(reader), 7, &name);
    /* skip 'version' */
    FUNC7(reader, 7);

    hr = FUNC5(reader);
    if (FUNC0(hr)) return hr;

    if (FUNC2(reader, quoteW) && FUNC2(reader, dblquoteW))
        return WC_E_QUOTE;
    /* skip "'"|'"' */
    FUNC7(reader, 1);

    hr = FUNC6(reader, &val);
    if (FUNC0(hr)) return hr;

    if (FUNC2(reader, quoteW) && FUNC2(reader, dblquoteW))
        return WC_E_QUOTE;

    /* skip "'"|'"' */
    FUNC7(reader, 1);

    return FUNC1(reader, NULL, &name, NULL, &val, &position, 0);
}