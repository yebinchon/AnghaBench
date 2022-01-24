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
struct TYPE_8__ {int resumestate; int /*<<< orphan*/  nodetype; int /*<<< orphan*/  instate; int /*<<< orphan*/  elements; int /*<<< orphan*/  is_empty_element; } ;
typedef  TYPE_1__ xmlreader ;
typedef  int /*<<< orphan*/  strval ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  StringValue_Prefix ; 
 int /*<<< orphan*/  StringValue_QualifiedName ; 
 int /*<<< orphan*/  StringValue_Value ; 
 int /*<<< orphan*/  XmlNodeType_Element ; 
 int /*<<< orphan*/  XmlReadInState_Content ; 
 int /*<<< orphan*/  XmlReadInState_MiscEnd ; 
#define  XmlReadResumeState_Initial 129 
#define  XmlReadResumeState_STag 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ltW ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  strval_empty ; 

__attribute__((used)) static HRESULT FUNC7(xmlreader *reader)
{
    HRESULT hr;

    switch (reader->resumestate)
    {
    case XmlReadResumeState_Initial:
        /* check if we are really on element */
        if (FUNC2(reader, ltW)) return S_FALSE;

        /* skip '<' */
        FUNC6(reader, 1);

        FUNC5(reader);
        reader->resumestate = XmlReadResumeState_STag;
    case XmlReadResumeState_STag:
    {
        strval qname, prefix, local;

        /* this handles empty elements too */
        hr = FUNC3(reader, &prefix, &local, &qname);
        if (FUNC0(hr)) return hr;

        /* FIXME: need to check for defined namespace to reject invalid prefix */

        /* if we got empty element and stack is empty go straight to Misc */
        if (reader->is_empty_element && FUNC1(&reader->elements))
            reader->instate = XmlReadInState_MiscEnd;
        else
            reader->instate = XmlReadInState_Content;

        reader->nodetype = XmlNodeType_Element;
        reader->resumestate = XmlReadResumeState_Initial;
        FUNC4(reader, StringValue_Prefix, &prefix);
        FUNC4(reader, StringValue_QualifiedName, &qname);
        FUNC4(reader, StringValue_Value, &strval_empty);
        break;
    }
    default:
        hr = E_FAIL;
    }

    return hr;
}