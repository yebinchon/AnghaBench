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
struct TYPE_7__ {int /*<<< orphan*/  attr_count; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ xmlreader ;
typedef  void* strval ;
struct reader_position {int dummy; } ;
struct attribute {unsigned int flags; int /*<<< orphan*/  entry; struct reader_position position; void* qname; void* prefix; int /*<<< orphan*/  value; int /*<<< orphan*/  localname; } ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void**,int /*<<< orphan*/ ,int) ; 
 struct attribute* FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct attribute*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*,void**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC6(xmlreader *reader, strval *prefix, strval *localname, strval *qname,
    strval *value, const struct reader_position *position, unsigned int flags)
{
    struct attribute *attr;
    HRESULT hr;

    attr = FUNC2(reader, sizeof(*attr));
    if (!attr) return E_OUTOFMEMORY;

    hr = FUNC5(reader, localname, &attr->localname);
    if (hr == S_OK)
    {
        hr = FUNC5(reader, value, &attr->value);
        if (hr != S_OK)
            FUNC4(reader, &attr->value);
    }
    if (hr != S_OK)
    {
        FUNC3(reader, attr);
        return hr;
    }

    if (prefix)
        attr->prefix = *prefix;
    else
        FUNC1(&attr->prefix, 0, sizeof(attr->prefix));
    attr->qname = qname ? *qname : *localname;
    attr->position = *position;
    attr->flags = flags;
    FUNC0(&reader->attrs, &attr->entry);
    reader->attr_count++;

    return S_OK;
}