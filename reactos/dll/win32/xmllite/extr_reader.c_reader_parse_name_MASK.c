#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__* resume; } ;
typedef  TYPE_1__ xmlreader ;
struct TYPE_13__ {int /*<<< orphan*/  len; } ;
typedef  TYPE_2__ strval ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_PENDING ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WC_E_NAMECHARACTER ; 
 size_t XmlReadResume_Name ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 

__attribute__((used)) static HRESULT FUNC9(xmlreader *reader, strval *name)
{
    WCHAR *ptr;
    UINT start;

    if (reader->resume[XmlReadResume_Name])
    {
        start = reader->resume[XmlReadResume_Name];
        ptr = FUNC6(reader);
    }
    else
    {
        ptr = FUNC6(reader);
        start = FUNC5(reader);
        if (!FUNC3(*ptr)) return WC_E_NAMECHARACTER;
    }

    while (FUNC2(*ptr))
    {
        FUNC8(reader, 1);
        ptr = FUNC6(reader);
    }

    if (FUNC4(reader))
    {
        reader->resume[XmlReadResume_Name] = start;
        return E_PENDING;
    }
    else
        reader->resume[XmlReadResume_Name] = 0;

    FUNC7(start, FUNC5(reader)-start, name);
    FUNC0("name %s:%d\n", FUNC1(reader, name), name->len);

    return S_OK;
}