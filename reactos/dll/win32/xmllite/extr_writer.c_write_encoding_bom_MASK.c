#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ bomwritten; TYPE_3__* output; int /*<<< orphan*/  bom; } ;
typedef  TYPE_1__ xmlwriter ;
typedef  int /*<<< orphan*/  utf16bom ;
struct output_buffer {scalar_t__ written; scalar_t__ data; } ;
struct TYPE_5__ {scalar_t__ encoding; struct output_buffer buffer; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ TRUE ; 
 scalar_t__ XmlEncoding_UTF16 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char const*,int) ; 

__attribute__((used)) static HRESULT FUNC3(xmlwriter *writer)
{
    if (!writer->bom || writer->bomwritten) return S_OK;

    if (writer->output->encoding == XmlEncoding_UTF16) {
        static const char utf16bom[] = {0xff, 0xfe};
        struct output_buffer *buffer = &writer->output->buffer;
        int len = sizeof(utf16bom);
        HRESULT hr;

        hr = FUNC1(writer->output, len);
        if (FUNC0(hr)) return hr;
        FUNC2(buffer->data + buffer->written, utf16bom, len);
        buffer->written += len;
    }

    writer->bomwritten = TRUE;
    return S_OK;
}