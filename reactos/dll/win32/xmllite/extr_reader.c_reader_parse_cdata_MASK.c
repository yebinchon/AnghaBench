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
struct TYPE_9__ {scalar_t__ resumestate; scalar_t__* resume; int /*<<< orphan*/  nodetype; } ;
typedef  TYPE_1__ xmlreader ;
typedef  int /*<<< orphan*/  strval ;
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  StringValue_Value ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XmlNodeType_CDATA ; 
 scalar_t__ XmlReadResumeState_CDATA ; 
 scalar_t__ XmlReadResumeState_Initial ; 
 size_t XmlReadResume_Body ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

__attribute__((used)) static HRESULT FUNC8(xmlreader *reader)
{
    WCHAR *ptr;
    UINT start;

    if (reader->resumestate == XmlReadResumeState_CDATA)
    {
        start = reader->resume[XmlReadResume_Body];
        ptr = FUNC3(reader);
    }
    else
    {
        /* skip markup '<![CDATA[' */
        FUNC7(reader, 9);
        FUNC6(reader);
        ptr = FUNC3(reader);
        start = FUNC2(reader);
        reader->nodetype = XmlNodeType_CDATA;
        reader->resume[XmlReadResume_Body] = start;
        reader->resumestate = XmlReadResumeState_CDATA;
        FUNC5(reader, StringValue_Value, NULL);
    }

    while (*ptr)
    {
        if (*ptr == ']' && *(ptr+1) == ']' && *(ptr+2) == '>')
        {
            strval value;

            FUNC4(start, FUNC2(reader)-start, &value);

            /* skip ']]>' */
            FUNC7(reader, 3);
            FUNC0("%s\n", FUNC1(reader, &value));

            FUNC5(reader, StringValue_Value, &value);
            reader->resume[XmlReadResume_Body] = 0;
            reader->resumestate = XmlReadResumeState_Initial;
            return S_OK;
        }
        else
        {
            FUNC7(reader, 1);
            ptr++;
        }
    }

    return S_OK;
}