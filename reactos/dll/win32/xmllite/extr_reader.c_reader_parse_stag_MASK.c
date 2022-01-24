#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct reader_position {int dummy; } ;
struct element {struct reader_position position; int /*<<< orphan*/  localname; int /*<<< orphan*/  qname; int /*<<< orphan*/  prefix; } ;
struct TYPE_12__ {int is_empty_element; struct element empty_element; struct reader_position position; } ;
typedef  TYPE_1__ xmlreader ;
typedef  int /*<<< orphan*/  strval ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 char const* gtW ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct element*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct reader_position*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC10(xmlreader *reader, strval *prefix, strval *local, strval *qname)
{
    struct reader_position position = reader->position;
    HRESULT hr;

    hr = FUNC5(reader, prefix, local, qname);
    if (FUNC0(hr)) return hr;

    for (;;)
    {
        static const WCHAR endW[] = {'/','>',0};

        FUNC8(reader);

        /* empty element */
        if ((reader->is_empty_element = !FUNC1(reader, endW)))
        {
            struct element *element = &reader->empty_element;

            /* skip '/>' */
            FUNC7(reader, 2);

            FUNC2(reader, &element->qname);
            FUNC2(reader, &element->localname);

            element->prefix = *prefix;
            FUNC9(reader, qname, &element->qname);
            FUNC9(reader, local, &element->localname);
            element->position = position;
            FUNC3(reader, element);
            return S_OK;
        }

        /* got a start tag */
        if (!FUNC1(reader, gtW))
        {
            /* skip '>' */
            FUNC7(reader, 1);
            return FUNC6(reader, prefix, local, qname, &position);
        }

        hr = FUNC4(reader);
        if (FUNC0(hr)) return hr;
    }

    return S_OK;
}