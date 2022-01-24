#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* buffer; } ;
typedef  TYPE_2__ xmlreaderinput ;
typedef  scalar_t__ xml_encoding ;
struct TYPE_10__ {int written; scalar_t__ cur; scalar_t__ data; } ;
typedef  TYPE_3__ encoded_buffer ;
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_8__ {int /*<<< orphan*/  code_page; TYPE_3__ utf16; TYPE_3__ encoded; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ XmlEncoding_UTF16 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC8(xmlreaderinput *readerinput, xml_encoding enc)
{
    encoded_buffer *src = &readerinput->buffer->encoded;
    encoded_buffer *dest = &readerinput->buffer->utf16;
    int len, dest_len;
    HRESULT hr;
    WCHAR *ptr;
    UINT cp;

    hr = FUNC4(enc, &cp);
    if (FUNC0(hr)) return;

    readerinput->buffer->code_page = cp;
    len = FUNC6(readerinput);

    FUNC2("switching to cp %d\n", cp);

    /* just copy in this case */
    if (enc == XmlEncoding_UTF16)
    {
        FUNC7(readerinput, len);
        FUNC5(dest->data, src->data + src->cur, len);
        dest->written += len*sizeof(WCHAR);
    }
    else
    {
        dest_len = FUNC1(cp, 0, src->data + src->cur, len, NULL, 0);
        FUNC7(readerinput, dest_len);
        ptr = (WCHAR*)dest->data;
        FUNC1(cp, 0, src->data + src->cur, len, ptr, dest_len);
        ptr[dest_len] = 0;
        dest->written += dest_len*sizeof(WCHAR);
    }

    FUNC3(dest, 0);
}