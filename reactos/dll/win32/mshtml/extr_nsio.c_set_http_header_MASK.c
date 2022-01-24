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
struct list {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  entry; struct TYPE_11__* data; struct TYPE_11__* header; } ;
typedef  TYPE_1__ http_header_t ;
typedef  TYPE_1__ WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int) ; 
 TYPE_1__* FUNC2 (struct list*,TYPE_1__ const*,int) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 void* FUNC5 (TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct list*,int /*<<< orphan*/ *) ; 

HRESULT FUNC7(struct list *headers, const WCHAR *name, int name_len,
        const WCHAR *value, int value_len)
{
    http_header_t *header;

    FUNC0("%s: %s\n", FUNC1(name, name_len), FUNC1(value, value_len));

    header = FUNC2(headers, name, name_len);
    if(header) {
        WCHAR *new_data;

        new_data = FUNC5(value, value_len);
        if(!new_data)
            return E_OUTOFMEMORY;

        FUNC4(header->data);
        header->data = new_data;
    }else {
        header = FUNC3(sizeof(http_header_t));
        if(!header)
            return E_OUTOFMEMORY;

        header->header = FUNC5(name, name_len);
        header->data = FUNC5(value, value_len);
        if(!header->header || !header->data) {
            FUNC4(header->header);
            FUNC4(header->data);
            FUNC4(header);
            return E_OUTOFMEMORY;
        }

        FUNC6(headers, &header->entry);
    }

    return S_OK;
}