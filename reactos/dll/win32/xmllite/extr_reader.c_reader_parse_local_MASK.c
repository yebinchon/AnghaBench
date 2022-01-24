#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__* resume; } ;
typedef  TYPE_1__ xmlreader ;
typedef  int /*<<< orphan*/  strval ;
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  E_PENDING ; 
 int /*<<< orphan*/  NC_E_QNAMECOLON ; 
 int /*<<< orphan*/  S_OK ; 
 size_t XmlReadResume_Local ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static HRESULT FUNC6(xmlreader *reader, strval *local, BOOL check_for_separator)
{
    WCHAR *ptr;
    UINT start;

    if (reader->resume[XmlReadResume_Local])
    {
        start = reader->resume[XmlReadResume_Local];
        ptr = FUNC3(reader);
    }
    else
    {
        ptr = FUNC3(reader);
        start = FUNC2(reader);
    }

    while (FUNC0(*ptr))
    {
        FUNC5(reader, 1);
        ptr = FUNC3(reader);
    }

    if (check_for_separator && *ptr == ':')
        return NC_E_QNAMECOLON;

    if (FUNC1(reader))
    {
         reader->resume[XmlReadResume_Local] = start;
         return E_PENDING;
    }
    else
         reader->resume[XmlReadResume_Local] = 0;

    FUNC4(start, FUNC2(reader)-start, local);

    return S_OK;
}