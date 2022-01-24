#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xmlreader ;
struct TYPE_8__ {char* member_0; int member_1; size_t len; } ;
typedef  TYPE_1__ strval ;
typedef  char WCHAR ;
typedef  size_t UINT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_PENDING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NC_E_NAMECOLON ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  WC_E_LEADINGXML ; 
 int /*<<< orphan*/  WC_E_PI ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__ const*) ; 

__attribute__((used)) static HRESULT FUNC7(xmlreader *reader, strval *target)
{
    static const WCHAR xmlW[] = {'x','m','l'};
    static const strval xmlval = { (WCHAR*)xmlW, 3 };
    strval name;
    WCHAR *ptr;
    HRESULT hr;
    UINT i;

    hr = FUNC5(reader, &name);
    if (FUNC0(hr)) return FUNC3(reader) ? E_PENDING : WC_E_PI;

    /* now that we got name check for illegal content */
    if (FUNC6(reader, &name, &xmlval))
        return WC_E_LEADINGXML;

    /* PITarget can't be a qualified name */
    ptr = FUNC4(reader, &name);
    for (i = 0; i < name.len; i++)
        if (ptr[i] == ':')
            return i ? NC_E_NAMECOLON : WC_E_PI;

    FUNC1("pitarget %s:%d\n", FUNC2(reader, &name), name.len);
    *target = name;
    return S_OK;
}