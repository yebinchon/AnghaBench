#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xml_encoding ;
struct TYPE_3__ {scalar_t__ utf16_total; int /*<<< orphan*/  blocks; int /*<<< orphan*/  encoded; int /*<<< orphan*/  code_page; } ;
typedef  TYPE_1__ output_buffer ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ S_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC3(xml_encoding encoding, output_buffer *buffer)
{
    HRESULT hr;

    hr = FUNC0(encoding, &buffer->code_page);
    if (hr != S_OK)
        return hr;

    hr = FUNC1(&buffer->encoded);
    if (hr != S_OK)
        return hr;

    FUNC2(&buffer->blocks);
    buffer->utf16_total = 0;

    return S_OK;
}