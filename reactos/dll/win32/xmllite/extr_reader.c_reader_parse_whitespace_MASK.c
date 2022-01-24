#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int resumestate; scalar_t__* resume; int /*<<< orphan*/  nodetype; } ;
typedef  TYPE_1__ xmlreader ;
typedef  int /*<<< orphan*/  strval ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  StringValue_LocalName ; 
 int /*<<< orphan*/  StringValue_QualifiedName ; 
 int /*<<< orphan*/  StringValue_Value ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XmlNodeType_Whitespace ; 
#define  XmlReadResumeState_Initial 129 
#define  XmlReadResumeState_Whitespace 128 
 size_t XmlReadResume_Body ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  strval_empty ; 

__attribute__((used)) static HRESULT FUNC8(xmlreader *reader)
{
    switch (reader->resumestate)
    {
    case XmlReadResumeState_Initial:
        FUNC6(reader);
        reader->resumestate = XmlReadResumeState_Whitespace;
        reader->resume[XmlReadResume_Body] = FUNC3(reader);
        reader->nodetype = XmlNodeType_Whitespace;
        FUNC5(reader, StringValue_LocalName, &strval_empty);
        FUNC5(reader, StringValue_QualifiedName, &strval_empty);
        FUNC5(reader, StringValue_Value, &strval_empty);
        /* fallthrough */
    case XmlReadResumeState_Whitespace:
    {
        strval value;
        UINT start;

        FUNC7(reader);
        if (FUNC2(reader)) return S_OK;

        start = reader->resume[XmlReadResume_Body];
        FUNC4(start, FUNC3(reader)-start, &value);
        FUNC5(reader, StringValue_Value, &value);
        FUNC0("%s\n", FUNC1(reader, &value));
        reader->resumestate = XmlReadResumeState_Initial;
    }
    default:
        ;
    }

    return S_OK;
}