#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
struct TYPE_7__ {scalar_t__ flags; int type; int /*<<< orphan*/  qwattr; int /*<<< orphan*/  lpattr; int /*<<< orphan*/  dwattr; } ;
typedef  int TAG ;
typedef  TYPE_2__* PATTRINFO ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  size_t DWORD ;

/* Variables and functions */
 scalar_t__ ATTRIBUTE_AVAILABLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
#define  TAG_TYPE_DWORD 130 
 int TAG_TYPE_MASK ; 
#define  TAG_TYPE_QWORD 129 
#define  TAG_TYPE_STRINGREF 128 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_2__**,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

int FUNC7(int argc, char* argv[], int* pn, const char* opt)
{
    UNICODE_STRING FileName;
    PATTRINFO attr;
    DWORD num_attr, n;
    int argn = *pn;
    const char* arg;

    if (!FUNC0())
        return 1;

    if (FUNC5(argv[argn]) > (FUNC5(opt)+1))
    {
        arg = argv[argn] + FUNC5(opt);
    }
    else if (argn+1 >= argc)
    {
        FUNC6("Error: no image name specified\n");
        return 1;
    }
    else
    {
        arg = argv[argn+1];
        (*pn) += 1;
    }

    FUNC1(&FileName, arg);

    if (FUNC3(FileName.Buffer, &attr, &num_attr))
    {
        FUNC6("Dumping attributes for %s\n", arg);
        for (n = 0; n < num_attr; ++n)
        {
            TAG tagType;
            LPCWSTR tagName;
            if (attr[n].flags != ATTRIBUTE_AVAILABLE)
                continue;

            tagName = FUNC4(attr[n].type);

            tagType = attr[n].type & TAG_TYPE_MASK;
            switch (tagType)
            {
            case TAG_TYPE_DWORD:
                FUNC6("<%ls>0x%lx</%ls>\n", tagName, attr[n].dwattr, tagName);
                break;
            case TAG_TYPE_STRINGREF:
                FUNC6("<%ls>%ls</%ls>\n", tagName, attr[n].lpattr, tagName);
                break;
            case TAG_TYPE_QWORD:
                FUNC6("<%ls>0x%I64x</%ls>\n", tagName, attr[n].qwattr, tagName);
                break;
            default:
                FUNC6("<!-- Unknown tag type: 0x%x (from 0x%x)\n", tagType, attr[n].type);
                break;
            }
        }
        FUNC6("Done\n");
    }
    else
    {
        FUNC6("Unable to get attributes from %s\n", arg);
    }


    FUNC2(&FileName);
    return 0;
}