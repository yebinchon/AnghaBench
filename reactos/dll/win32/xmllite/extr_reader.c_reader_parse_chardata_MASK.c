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
struct TYPE_12__ {scalar_t__ resumestate; void* nodetype; scalar_t__* resume; TYPE_1__ empty_element; struct reader_position position; } ;
typedef  TYPE_2__ xmlreader ;
typedef  int /*<<< orphan*/  strval ;
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  StringValue_Value ; 
 int /*<<< orphan*/  WC_E_CDSECTEND ; 
 void* XmlNodeType_Text ; 
 void* XmlNodeType_Whitespace ; 
 scalar_t__ XmlReadResumeState_CharData ; 
 scalar_t__ XmlReadResumeState_Initial ; 
 size_t XmlReadResume_Body ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 char* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 

__attribute__((used)) static HRESULT FUNC9(xmlreader *reader)
{
    struct reader_position position;
    WCHAR *ptr;
    UINT start;

    if (reader->resumestate == XmlReadResumeState_CharData)
    {
        start = reader->resume[XmlReadResume_Body];
        ptr = FUNC3(reader);
    }
    else
    {
        FUNC7(reader);
        ptr = FUNC3(reader);
        start = FUNC2(reader);
        /* There's no text */
        if (!*ptr || *ptr == '<') return S_OK;
        reader->nodetype = FUNC0(*ptr) ? XmlNodeType_Whitespace : XmlNodeType_Text;
        reader->resume[XmlReadResume_Body] = start;
        reader->resumestate = XmlReadResumeState_CharData;
        FUNC6(reader, StringValue_Value, NULL);
    }

    position = reader->position;
    while (*ptr)
    {
        static const WCHAR ampW[] = {'&',0};

        /* CDATA closing sequence ']]>' is not allowed */
        if (ptr[0] == ']' && ptr[1] == ']' && ptr[2] == '>')
            return WC_E_CDSECTEND;

        /* Found next markup part */
        if (ptr[0] == '<')
        {
            strval value;

            reader->empty_element.position = position;
            FUNC4(start, FUNC2(reader)-start, &value);
            FUNC6(reader, StringValue_Value, &value);
            reader->resume[XmlReadResume_Body] = 0;
            reader->resumestate = XmlReadResumeState_Initial;
            return S_OK;
        }

        /* this covers a case when text has leading whitespace chars */
        if (!FUNC0(*ptr)) reader->nodetype = XmlNodeType_Text;

        if (!FUNC1(reader, ampW))
            FUNC5(reader);
        else
            FUNC8(reader, 1);

        ptr = FUNC3(reader);
    }

    return S_OK;
}