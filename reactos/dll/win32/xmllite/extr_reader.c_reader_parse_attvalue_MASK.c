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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  WC_E_LESSTHAN ; 
 int /*<<< orphan*/  WC_E_QUOTE ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static HRESULT FUNC7(xmlreader *reader, strval *value)
{
    WCHAR *ptr, quote;
    UINT start;

    ptr = FUNC3(reader);

    /* skip opening quote */
    quote = *ptr;
    if (quote != '\"' && quote != '\'') return WC_E_QUOTE;
    FUNC6(reader, 1);

    ptr = FUNC3(reader);
    start = FUNC2(reader);
    while (*ptr)
    {
        if (*ptr == '<') return WC_E_LESSTHAN;

        if (*ptr == quote)
        {
            FUNC4(start, FUNC2(reader)-start, value);
            /* skip closing quote */
            FUNC6(reader, 1);
            return S_OK;
        }

        if (*ptr == '&')
        {
            HRESULT hr = FUNC5(reader);
            if (FUNC0(hr)) return hr;
        }
        else
        {
            /* replace all whitespace chars with ' ' */
            if (FUNC1(*ptr)) *ptr = ' ';
            FUNC6(reader, 1);
        }
        ptr = FUNC3(reader);
    }

    return WC_E_QUOTE;
}