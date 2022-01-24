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
struct TYPE_11__ {int resumestate; scalar_t__* resume; int /*<<< orphan*/  nodetype; } ;
typedef  TYPE_1__ xmlreader ;
typedef  int /*<<< orphan*/  strval ;
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  StringValue_LocalName ; 
 int /*<<< orphan*/  StringValue_QualifiedName ; 
 int /*<<< orphan*/  StringValue_Value ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XmlNodeType_ProcessingInstruction ; 
#define  XmlReadResumeState_Initial 129 
 int XmlReadResumeState_PIBody ; 
#define  XmlReadResumeState_PITarget 128 
 size_t XmlReadResume_Body ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 void* FUNC4 (TYPE_1__*) ; 
 char* FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  strval_empty ; 

__attribute__((used)) static HRESULT FUNC12(xmlreader *reader)
{
    strval target;
    WCHAR *ptr;
    UINT start;
    HRESULT hr;

    switch (reader->resumestate)
    {
    case XmlReadResumeState_Initial:
        /* skip '<?' */
        FUNC11(reader, 2);
        FUNC10(reader);
        reader->resumestate = XmlReadResumeState_PITarget;
    case XmlReadResumeState_PITarget:
        hr = FUNC8(reader, &target);
        if (FUNC0(hr)) return hr;
        FUNC9(reader, StringValue_LocalName, &target);
        FUNC9(reader, StringValue_QualifiedName, &target);
        FUNC9(reader, StringValue_Value, &strval_empty);
        reader->resumestate = XmlReadResumeState_PIBody;
        reader->resume[XmlReadResume_Body] = FUNC4(reader);
    default:
        ;
    }

    start = reader->resume[XmlReadResume_Body];
    ptr = FUNC5(reader);
    while (*ptr)
    {
        if (ptr[0] == '?')
        {
            if (ptr[1] == '>')
            {
                UINT cur = FUNC4(reader);
                strval value;

                /* strip all leading whitespace chars */
                while (start < cur)
                {
                    ptr = FUNC6(reader, start);
                    if (!FUNC3(*ptr)) break;
                    start++;
                }

                FUNC7(start, cur-start, &value);

                /* skip '?>' */
                FUNC11(reader, 2);
                FUNC1("%s\n", FUNC2(reader, &value));
                reader->nodetype = XmlNodeType_ProcessingInstruction;
                reader->resumestate = XmlReadResumeState_Initial;
                reader->resume[XmlReadResume_Body] = 0;
                FUNC9(reader, StringValue_Value, &value);
                return S_OK;
            }
        }

        FUNC11(reader, 1);
        ptr = FUNC5(reader);
    }

    return S_OK;
}