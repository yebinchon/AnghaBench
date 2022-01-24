#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_2__* input; } ;
typedef  TYPE_3__ xmlreader ;
typedef  int /*<<< orphan*/  strval ;
struct TYPE_16__ {int written; char* data; int cur; } ;
typedef  TYPE_4__ encoded_buffer ;
typedef  char WCHAR ;
typedef  int UINT ;
struct TYPE_14__ {TYPE_1__* buffer; } ;
struct TYPE_13__ {TYPE_4__ utf16; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  WC_E_DIGIT ; 
 int /*<<< orphan*/  WC_E_HEXDIGIT ; 
 int /*<<< orphan*/  WC_E_SEMICOLON ; 
 int /*<<< orphan*/  WC_E_UNDECLAREDENTITY ; 
 int /*<<< orphan*/  WC_E_XMLCHARACTER ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 char FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 scalar_t__ FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int FUNC7 (TYPE_3__*) ; 
 char* FUNC8 (TYPE_3__*) ; 
 char* FUNC9 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int) ; 

__attribute__((used)) static HRESULT FUNC12(xmlreader *reader)
{
    encoded_buffer *buffer = &reader->input->buffer->utf16;
    WCHAR *start = FUNC8(reader), *ptr;
    UINT cur = FUNC7(reader);
    WCHAR ch = 0;
    int len;

    /* skip '&' */
    FUNC11(reader, 1);
    ptr = FUNC8(reader);

    if (*ptr == '#')
    {
        FUNC11(reader, 1);
        ptr = FUNC8(reader);

        /* hex char or decimal */
        if (*ptr == 'x')
        {
            FUNC11(reader, 1);
            ptr = FUNC8(reader);

            while (*ptr != ';')
            {
                if ((*ptr >= '0' && *ptr <= '9'))
                    ch = ch*16 + *ptr - '0';
                else if ((*ptr >= 'a' && *ptr <= 'f'))
                    ch = ch*16 + *ptr - 'a' + 10;
                else if ((*ptr >= 'A' && *ptr <= 'F'))
                    ch = ch*16 + *ptr - 'A' + 10;
                else
                    return ch ? WC_E_SEMICOLON : WC_E_HEXDIGIT;
                FUNC11(reader, 1);
                ptr = FUNC8(reader);
            }
        }
        else
        {
            while (*ptr != ';')
            {
                if ((*ptr >= '0' && *ptr <= '9'))
                {
                    ch = ch*10 + *ptr - '0';
                    FUNC11(reader, 1);
                    ptr = FUNC8(reader);
                }
                else
                    return ch ? WC_E_SEMICOLON : WC_E_DIGIT;
            }
        }

        if (!FUNC4(ch)) return WC_E_XMLCHARACTER;

        /* normalize */
        if (FUNC5(ch)) ch = ' ';

        ptr = FUNC8(reader);
        start = FUNC9(reader, cur);
        len = buffer->written - ((char *)ptr - buffer->data);
        FUNC6(start + 1, ptr + 1, len);

        buffer->written -= (FUNC7(reader) - cur) * sizeof(WCHAR);
        buffer->cur = cur + 1;

        *start = ch;
    }
    else
    {
        strval name;
        HRESULT hr;

        hr = FUNC10(reader, &name);
        if (FUNC0(hr)) return hr;

        ptr = FUNC8(reader);
        if (*ptr != ';') return WC_E_SEMICOLON;

        /* predefined entities resolve to a single character */
        ch = FUNC3(reader, &name);
        if (ch)
        {
            len = buffer->written - ((char*)ptr - buffer->data) - sizeof(WCHAR);
            FUNC6(start+1, ptr+1, len);
            buffer->cur = cur + 1;
            buffer->written -= (ptr - start) * sizeof(WCHAR);

            *start = ch;
        }
        else
        {
            FUNC1("undeclared entity %s\n", FUNC2(reader, &name));
            return WC_E_UNDECLAREDENTITY;
        }

    }

    return S_OK;
}