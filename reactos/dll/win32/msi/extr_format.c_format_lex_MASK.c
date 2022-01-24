#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int WCHAR ;
struct TYPE_9__ {scalar_t__ n; int /*<<< orphan*/  deformatted; } ;
struct TYPE_8__ {int len; int type; scalar_t__ n; } ;
typedef  char* LPCWSTR ;
typedef  TYPE_1__ FORMSTR ;
typedef  TYPE_2__ FORMAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FORMAT_ERROR ; 
 int FORMAT_ESCAPE ; 
 int FORMAT_FAIL ; 
 int FORMAT_LBRACE ; 
 int FORMAT_LBRACK ; 
 int FORMAT_LITERAL ; 
 int FORMAT_NULL ; 
 int FORMAT_NUMBER ; 
 int FORMAT_PROPNULL ; 
 int FORMAT_RBRACE ; 
 int FORMAT_RBRACK ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char) ; 
 char* FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(FORMAT *format, FORMSTR **out)
{
    int type, len = 1;
    FORMSTR *str;
    LPCWSTR data;
    WCHAR ch;

    *out = NULL;

    if (!format->deformatted)
        return FORMAT_NULL;

    *out = FUNC5(sizeof(FORMSTR));
    if (!*out)
        return FORMAT_FAIL;

    str = *out;
    str->n = format->n;
    str->len = 1;
    data = FUNC4(format, str);

    ch = data[0];
    switch (ch)
    {
        case '{': type = FORMAT_LBRACE; break;
        case '}': type = FORMAT_RBRACE; break;
        case '[': type = FORMAT_LBRACK; break;
        case ']': type = FORMAT_RBRACK; break;
        case '~': type = FORMAT_PROPNULL; break;
        case '\0': type = FORMAT_NULL; break;

        default:
            type = 0;
    }

    if (type)
    {
        str->type = type;
        format->n++;
        return type;
    }

    if (ch == '\\')
    {
        while (data[len] && data[len] != ']')
            len++;

        type = FORMAT_ESCAPE;
    }
    else if (FUNC1(ch))
    {
        while (FUNC2(data[len]))
            len++;

        type = FORMAT_LITERAL;
    }
    else if (FUNC3(ch))
    {
        while (FUNC3(data[len]))
            len++;

        type = FORMAT_NUMBER;

        if (data[len] != ']')
        {
            while (FUNC2(data[len]))
                len++;

            type = FORMAT_LITERAL;
        }
    }
    else
    {
        FUNC0("Got unknown character %c(%x)\n", ch, ch);
        return FORMAT_ERROR;
    }

    format->n += len;
    str->len = len;
    str->type = type;

    return type;
}