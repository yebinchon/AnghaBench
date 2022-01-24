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
struct TYPE_9__ {int resumestate; } ;
typedef  TYPE_1__ xmlreader ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ S_FALSE ; 
#define  XmlReadResumeState_Comment 131 
 int XmlReadResumeState_Initial ; 
#define  XmlReadResumeState_PIBody 130 
#define  XmlReadResumeState_PITarget 129 
#define  XmlReadResumeState_Whitespace 128 
 int /*<<< orphan*/  commentW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  piW ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC9(xmlreader *reader)
{
    HRESULT hr = S_FALSE;

    if (reader->resumestate != XmlReadResumeState_Initial)
    {
        hr = FUNC5(reader);
        if (FUNC1(hr)) return hr;

        /* finish current node */
        switch (reader->resumestate)
        {
        case XmlReadResumeState_PITarget:
        case XmlReadResumeState_PIBody:
            return FUNC7(reader);
        case XmlReadResumeState_Comment:
            return FUNC6(reader);
        case XmlReadResumeState_Whitespace:
            return FUNC8(reader);
        default:
            FUNC0("unknown resume state %d\n", reader->resumestate);
        }
    }

    while (1)
    {
        const WCHAR *cur = FUNC4(reader);

        if (FUNC2(*cur))
            hr = FUNC8(reader);
        else if (!FUNC3(reader, commentW))
            hr = FUNC6(reader);
        else if (!FUNC3(reader, piW))
            hr = FUNC7(reader);
        else
            break;

        if (hr != S_FALSE) return hr;
    }

    return hr;
}