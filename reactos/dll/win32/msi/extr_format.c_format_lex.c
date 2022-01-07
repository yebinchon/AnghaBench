
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_9__ {scalar_t__ n; int deformatted; } ;
struct TYPE_8__ {int len; int type; scalar_t__ n; } ;
typedef char* LPCWSTR ;
typedef TYPE_1__ FORMSTR ;
typedef TYPE_2__ FORMAT ;


 int ERR (char*,int,int) ;
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
 scalar_t__ format_is_alpha (int) ;
 scalar_t__ format_is_literal (char) ;
 scalar_t__ format_is_number (char) ;
 char* get_formstr_data (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* msi_alloc_zero (int) ;

__attribute__((used)) static int format_lex(FORMAT *format, FORMSTR **out)
{
    int type, len = 1;
    FORMSTR *str;
    LPCWSTR data;
    WCHAR ch;

    *out = ((void*)0);

    if (!format->deformatted)
        return FORMAT_NULL;

    *out = msi_alloc_zero(sizeof(FORMSTR));
    if (!*out)
        return FORMAT_FAIL;

    str = *out;
    str->n = format->n;
    str->len = 1;
    data = get_formstr_data(format, str);

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
    else if (format_is_alpha(ch))
    {
        while (format_is_literal(data[len]))
            len++;

        type = FORMAT_LITERAL;
    }
    else if (format_is_number(ch))
    {
        while (format_is_number(data[len]))
            len++;

        type = FORMAT_NUMBER;

        if (data[len] != ']')
        {
            while (format_is_literal(data[len]))
                len++;

            type = FORMAT_LITERAL;
        }
    }
    else
    {
        ERR("Got unknown character %c(%x)\n", ch, ch);
        return FORMAT_ERROR;
    }

    format->n += len;
    str->len = len;
    str->type = type;

    return type;
}
