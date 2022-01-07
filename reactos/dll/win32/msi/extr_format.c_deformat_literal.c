
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
struct TYPE_18__ {void* propfailed; } ;
struct TYPE_17__ {int len; int n; } ;
typedef char* LPCWSTR ;
typedef TYPE_1__ FORMSTR ;
typedef TYPE_2__ FORMAT ;
typedef void* BOOL ;


 void* FALSE ;
 int FORMAT_LITERAL ;
 void* TRUE ;
 scalar_t__* deformat_component (TYPE_2__*,TYPE_1__*,int*) ;
 scalar_t__* deformat_environment (TYPE_2__*,TYPE_1__*,int*) ;
 scalar_t__* deformat_file (TYPE_2__*,TYPE_1__*,void*,int*) ;
 scalar_t__* deformat_property (TYPE_2__*,TYPE_1__*,int*) ;
 scalar_t__* dup_formstr (TYPE_2__*,TYPE_1__*,int*) ;
 char* get_formstr_data (TYPE_2__*,TYPE_1__*) ;
 scalar_t__* msi_alloc (int) ;

__attribute__((used)) static WCHAR *deformat_literal( FORMAT *format, FORMSTR *str, BOOL *propfound,
                                int *type, int *len )
{
    LPCWSTR data = get_formstr_data(format, str);
    WCHAR *replaced = ((void*)0);
    char ch = data[0];

    if (ch == '\\')
    {
        str->n++;
        if (str->len == 1)
        {
            str->len = 0;
            replaced = ((void*)0);
        }
        else
        {
            str->len = 1;
            replaced = dup_formstr( format, str, len );
        }
    }
    else if (ch == '~')
    {
        if (str->len != 1)
            replaced = ((void*)0);
        else if ((replaced = msi_alloc( sizeof(WCHAR) )))
        {
            *replaced = 0;
            *len = 0;
        }
    }
    else if (ch == '%' || ch == '#' || ch == '!' || ch == '$')
    {
        str->n++;
        str->len--;

        switch (ch)
        {
        case '%':
            replaced = deformat_environment( format, str, len ); break;
        case '#':
            replaced = deformat_file( format, str, FALSE, len ); break;
        case '!':
            replaced = deformat_file( format, str, TRUE, len ); break;
        case '$':
            replaced = deformat_component( format, str, len ); break;
        }

        *type = FORMAT_LITERAL;
    }
    else
    {
        replaced = deformat_property( format, str, len );
        *type = FORMAT_LITERAL;

        if (replaced)
            *propfound = TRUE;
        else
            format->propfailed = TRUE;
    }

    return replaced;
}
