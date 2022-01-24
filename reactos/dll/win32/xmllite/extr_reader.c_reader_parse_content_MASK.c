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
struct TYPE_11__ {int resumestate; } ;
typedef  TYPE_1__ xmlreader ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  XmlReadResumeState_CDATA 132 
#define  XmlReadResumeState_CharData 131 
#define  XmlReadResumeState_Comment 130 
 int XmlReadResumeState_Initial ; 
#define  XmlReadResumeState_PIBody 129 
#define  XmlReadResumeState_PITarget 128 
 char const* commentW ; 
 char const* ltW ; 
 char const* piW ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC9(xmlreader *reader)
{
    static const WCHAR cdstartW[] = {'<','!','[','C','D','A','T','A','[',0};
    static const WCHAR etagW[] = {'<','/',0};

    if (reader->resumestate != XmlReadResumeState_Initial)
    {
        switch (reader->resumestate)
        {
        case XmlReadResumeState_CDATA:
            return FUNC2(reader);
        case XmlReadResumeState_Comment:
            return FUNC4(reader);
        case XmlReadResumeState_PIBody:
        case XmlReadResumeState_PITarget:
            return FUNC7(reader);
        case XmlReadResumeState_CharData:
            return FUNC3(reader);
        default:
            FUNC0("unknown resume state %d\n", reader->resumestate);
        }
    }

    FUNC8(reader);

    /* handle end tag here, it indicates end of content as well */
    if (!FUNC1(reader, etagW))
        return FUNC6(reader);

    if (!FUNC1(reader, commentW))
        return FUNC4(reader);

    if (!FUNC1(reader, piW))
        return FUNC7(reader);

    if (!FUNC1(reader, cdstartW))
        return FUNC2(reader);

    if (!FUNC1(reader, ltW))
        return FUNC5(reader);

    /* what's left must be CharData */
    return FUNC3(reader);
}