#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__* resume; } ;
typedef  TYPE_1__ xmlreader ;
struct TYPE_17__ {scalar_t__ len; scalar_t__ start; } ;
typedef  TYPE_2__ strval ;
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_PENDING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NC_E_QNAMECHARACTER ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  TRUE ; 
 size_t XmlReadResume_Local ; 
 size_t XmlReadResume_Name ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 

__attribute__((used)) static HRESULT FUNC10(xmlreader *reader, strval *prefix, strval *local, strval *qname)
{
    WCHAR *ptr;
    UINT start;
    HRESULT hr;

    if (reader->resume[XmlReadResume_Name])
    {
        start = reader->resume[XmlReadResume_Name];
        ptr = FUNC6(reader);
    }
    else
    {
        ptr = FUNC6(reader);
        start = FUNC5(reader);
        reader->resume[XmlReadResume_Name] = start;
        if (!FUNC3(*ptr)) return NC_E_QNAMECHARACTER;
    }

    if (reader->resume[XmlReadResume_Local])
    {
        hr = FUNC8(reader, local, FALSE);
        if (FUNC0(hr)) return hr;

        FUNC7(reader->resume[XmlReadResume_Name],
                             local->start - reader->resume[XmlReadResume_Name] - 1,
                             prefix);
    }
    else
    {
        /* skip prefix part */
        while (FUNC3(*ptr))
        {
            FUNC9(reader, 1);
            ptr = FUNC6(reader);
        }

        if (FUNC4(reader)) return E_PENDING;

        /* got a qualified name */
        if (*ptr == ':')
        {
            FUNC7(start, FUNC5(reader)-start, prefix);

            /* skip ':' */
            FUNC9(reader, 1);
            hr = FUNC8(reader, local, TRUE);
            if (FUNC0(hr)) return hr;
        }
        else
        {
            FUNC7(reader->resume[XmlReadResume_Name], FUNC5(reader)-reader->resume[XmlReadResume_Name], local);
            FUNC7(0, 0, prefix);
        }
    }

    if (prefix->len)
        FUNC1("qname %s:%s\n", FUNC2(reader, prefix), FUNC2(reader, local));
    else
        FUNC1("ncname %s\n", FUNC2(reader, local));

    FUNC7(prefix->len ? prefix->start : local->start,
                        /* count ':' too */
                        (prefix->len ? prefix->len + 1 : 0) + local->len,
                         qname);

    reader->resume[XmlReadResume_Name] = 0;
    reader->resume[XmlReadResume_Local] = 0;

    return S_OK;
}