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
typedef  int /*<<< orphan*/  xmlreader ;
typedef  int /*<<< orphan*/  strval ;
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WC_E_QUOTE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static HRESULT FUNC7(xmlreader *reader, strval *literal)
{
    WCHAR *cur = FUNC4(reader), quote;
    UINT start;

    if (*cur != '"' && *cur != '\'') return WC_E_QUOTE;

    quote = *cur;
    FUNC6(reader, 1);

    start = FUNC3(reader);
    cur = FUNC4(reader);
    while (FUNC2(*cur) && *cur != quote)
    {
        FUNC6(reader, 1);
        cur = FUNC4(reader);
    }
    FUNC5(start, FUNC3(reader)-start, literal);
    if (*cur == quote) FUNC6(reader, 1);

    FUNC0("%s\n", FUNC1(reader, literal));
    return S_OK;
}