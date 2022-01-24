#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct output_buffer {int allocated; unsigned int codepage; scalar_t__ written; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/  encoding; struct output_buffer buffer; } ;
typedef  TYPE_1__ xmlwriteroutput ;
typedef  unsigned int UINT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int const) ; 

__attribute__((used)) static HRESULT FUNC5(xmlwriteroutput *output)
{
    struct output_buffer *buffer = &output->buffer;
    const int initial_len = 0x2000;
    UINT cp = ~0u;
    HRESULT hr;

    if (FUNC0(hr = FUNC2(output->encoding, &cp)))
        FUNC1("Failed to get code page for specified encoding.\n");

    buffer->data = FUNC4(output, initial_len);
    if (!buffer->data) return E_OUTOFMEMORY;

    FUNC3(buffer->data, 0, 4);
    buffer->allocated = initial_len;
    buffer->written = 0;
    buffer->codepage = cp;

    return S_OK;
}