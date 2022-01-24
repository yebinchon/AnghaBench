#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct reader_position {int dummy; } ;
struct TYPE_10__ {struct reader_position position; } ;
typedef  TYPE_1__ xmlreader ;
typedef  int /*<<< orphan*/  strval ;
typedef  enum attribute_flags { ____Placeholder_attribute_flags } attribute_flags ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int ATTRIBUTE_DEFAULT_NS_DEFINITION ; 
 int ATTRIBUTE_NS_DEFINITION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct reader_position*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  strval_xmlns ; 

__attribute__((used)) static HRESULT FUNC9(xmlreader *reader)
{
    struct reader_position position = reader->position;
    strval prefix, local, qname, value;
    enum attribute_flags flags = 0;
    HRESULT hr;

    hr = FUNC6(reader, &prefix, &local, &qname);
    if (FUNC0(hr)) return hr;

    if (FUNC8(reader, &prefix, &strval_xmlns))
        flags |= ATTRIBUTE_NS_DEFINITION;

    if (FUNC8(reader, &qname, &strval_xmlns))
        flags |= ATTRIBUTE_DEFAULT_NS_DEFINITION;

    hr = FUNC5(reader);
    if (FUNC0(hr)) return hr;

    hr = FUNC4(reader, &value);
    if (FUNC0(hr)) return hr;

    if (flags & (ATTRIBUTE_NS_DEFINITION | ATTRIBUTE_DEFAULT_NS_DEFINITION))
        FUNC7(reader, &local, &value, !!(flags & ATTRIBUTE_DEFAULT_NS_DEFINITION));

    FUNC1("%s=%s\n", FUNC2(reader, &local), FUNC2(reader, &value));
    return FUNC3(reader, &prefix, &local, &qname, &value, &position, flags);
}