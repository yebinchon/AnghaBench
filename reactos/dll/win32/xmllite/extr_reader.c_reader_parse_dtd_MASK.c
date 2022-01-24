#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ dtdmode; int /*<<< orphan*/  nodetype; } ;
typedef  TYPE_1__ xmlreader ;
typedef  int /*<<< orphan*/  strval ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ DtdProcessing_Prohibit ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  StringValue_LocalName ; 
 int /*<<< orphan*/  StringValue_QualifiedName ; 
 int /*<<< orphan*/  WC_E_DECLDOCTYPE ; 
 int /*<<< orphan*/  WC_E_DTDPROHIBITED ; 
 int /*<<< orphan*/  WC_E_WHITESPACE ; 
 int /*<<< orphan*/  XmlNodeType_DocumentType ; 
 scalar_t__ FUNC2 (TYPE_1__*,char const*) ; 
 char* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC10(xmlreader *reader)
{
    static const WCHAR doctypeW[] = {'<','!','D','O','C','T','Y','P','E',0};
    strval name;
    WCHAR *cur;
    HRESULT hr;

    /* check if we have "<!DOCTYPE" */
    if (FUNC2(reader, doctypeW)) return S_FALSE;
    FUNC7(reader);

    /* DTD processing is not allowed by default */
    if (reader->dtdmode == DtdProcessing_Prohibit) return WC_E_DTDPROHIBITED;

    FUNC8(reader, 9);
    if (!FUNC9(reader)) return WC_E_WHITESPACE;

    /* name */
    hr = FUNC5(reader, &name);
    if (FUNC0(hr)) return WC_E_DECLDOCTYPE;

    FUNC9(reader);

    hr = FUNC4(reader);
    if (FUNC0(hr)) return hr;

    FUNC9(reader);

    cur = FUNC3(reader);
    if (*cur != '>')
    {
        FUNC1("internal subset parsing not implemented\n");
        return E_NOTIMPL;
    }

    /* skip '>' */
    FUNC8(reader, 1);

    reader->nodetype = XmlNodeType_DocumentType;
    FUNC6(reader, StringValue_LocalName, &name);
    FUNC6(reader, StringValue_QualifiedName, &name);

    return S_OK;
}