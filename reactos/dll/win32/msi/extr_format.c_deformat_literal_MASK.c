#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WCHAR ;
struct TYPE_18__ {void* propfailed; } ;
struct TYPE_17__ {int len; int /*<<< orphan*/  n; } ;
typedef  char* LPCWSTR ;
typedef  TYPE_1__ FORMSTR ;
typedef  TYPE_2__ FORMAT ;
typedef  void* BOOL ;

/* Variables and functions */
 void* FALSE ; 
 int FORMAT_LITERAL ; 
 void* TRUE ; 
 scalar_t__* FUNC0 (TYPE_2__*,TYPE_1__*,int*) ; 
 scalar_t__* FUNC1 (TYPE_2__*,TYPE_1__*,int*) ; 
 scalar_t__* FUNC2 (TYPE_2__*,TYPE_1__*,void*,int*) ; 
 scalar_t__* FUNC3 (TYPE_2__*,TYPE_1__*,int*) ; 
 scalar_t__* FUNC4 (TYPE_2__*,TYPE_1__*,int*) ; 
 char* FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__* FUNC6 (int) ; 

__attribute__((used)) static WCHAR *FUNC7( FORMAT *format, FORMSTR *str, BOOL *propfound,
                                int *type, int *len )
{
    LPCWSTR data = FUNC5(format, str);
    WCHAR *replaced = NULL;
    char ch = data[0];

    if (ch == '\\')
    {
        str->n++;
        if (str->len == 1)
        {
            str->len = 0;
            replaced = NULL;
        }
        else
        {
            str->len = 1;
            replaced = FUNC4( format, str, len );
        }
    }
    else if (ch == '~')
    {
        if (str->len != 1)
            replaced = NULL;
        else if ((replaced = FUNC6( sizeof(WCHAR) )))
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
            replaced = FUNC1( format, str, len ); break;
        case '#':
            replaced = FUNC2( format, str, FALSE, len ); break;
        case '!':
            replaced = FUNC2( format, str, TRUE, len ); break;
        case '$':
            replaced = FUNC0( format, str, len ); break;
        }

        *type = FORMAT_LITERAL;
    }
    else
    {
        replaced = FUNC3( format, str, len );
        *type = FORMAT_LITERAL;

        if (replaced)
            *propfound = TRUE;
        else
            format->propfailed = TRUE;
    }

    return replaced;
}