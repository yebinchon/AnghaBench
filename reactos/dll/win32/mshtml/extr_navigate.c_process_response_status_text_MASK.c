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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 char* FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,char) ; 

__attribute__((used)) static HRESULT FUNC2(const WCHAR *header, const WCHAR *header_end, char **status_text)
{
    header = FUNC1(header + 1, ' ');
    if(!header || header >= header_end)
        return E_FAIL;
    header = FUNC1(header + 1, ' ');
    if(!header || header >= header_end)
        return E_FAIL;
    ++header;

    *status_text = FUNC0(header, header_end - header);

    if(!*status_text)
        return E_OUTOFMEMORY;

    return S_OK;
}