#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct reader_position {int dummy; } ;
struct TYPE_11__ {struct reader_position position; } ;
struct TYPE_12__ {TYPE_1__ empty_element; int /*<<< orphan*/  nodetype; struct reader_position position; } ;
typedef  TYPE_2__ xmlreader ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  StringValue_LocalName ; 
 int /*<<< orphan*/  StringValue_QualifiedName ; 
 int /*<<< orphan*/  WC_E_XMLDECL ; 
 int /*<<< orphan*/  XmlNodeType_XmlDeclaration ; 
 scalar_t__ FUNC1 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  strval_xml ; 

__attribute__((used)) static HRESULT FUNC8(xmlreader *reader)
{
    static const WCHAR xmldeclW[] = {'<','?','x','m','l',' ',0};
    static const WCHAR declcloseW[] = {'?','>',0};
    struct reader_position position;
    HRESULT hr;

    /* check if we have "<?xml " */
    if (FUNC1(reader, xmldeclW))
        return S_FALSE;

    FUNC6(reader, 2);
    position = reader->position;
    FUNC6(reader, 3);
    hr = FUNC4(reader);
    if (FUNC0(hr))
        return hr;

    hr = FUNC2(reader);
    if (FUNC0(hr))
        return hr;

    hr = FUNC3(reader);
    if (FUNC0(hr))
        return hr;

    FUNC7(reader);
    if (FUNC1(reader, declcloseW))
        return WC_E_XMLDECL;

    /* skip '?>' */
    FUNC6(reader, 2);

    reader->nodetype = XmlNodeType_XmlDeclaration;
    reader->empty_element.position = position;
    FUNC5(reader, StringValue_LocalName, &strval_xml);
    FUNC5(reader, StringValue_QualifiedName, &strval_xml);

    return S_OK;
}