#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_11__ {scalar_t__ len; int /*<<< orphan*/ * deformatted; int /*<<< orphan*/  groups; int /*<<< orphan*/  n; int /*<<< orphan*/  propfailed; int /*<<< orphan*/ * record; int /*<<< orphan*/ * package; } ;
struct TYPE_10__ {int len; int type; } ;
typedef  int /*<<< orphan*/  STACK ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  TYPE_1__ FORMSTR ;
typedef  TYPE_2__ FORMAT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int FORMAT_ESCAPE ; 
 int FORMAT_LBRACE ; 
 int FORMAT_LBRACK ; 
 int FORMAT_LITERAL ; 
 int FORMAT_NULL ; 
 int FORMAT_NUMBER ; 
 int FORMAT_PROPNULL ; 
 int FORMAT_RBRACE ; 
 int FORMAT_RBRACK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (TYPE_2__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static DWORD FUNC13(MSIPACKAGE *package, LPCWSTR ptr, 
                                      WCHAR** data, DWORD *len,
                                      MSIRECORD* record)
{
    FORMAT format;
    FORMSTR *str = NULL;
    STACK *stack, *temp;
    FORMSTR *node;
    int type;

    if (!ptr)
    {
        *data = NULL;
        *len = 0;
        return ERROR_SUCCESS;
    }

    *data = FUNC11(ptr);
    *len = FUNC5(ptr);

    FUNC0(&format, sizeof(FORMAT));
    format.package = package;
    format.record = record;
    format.deformatted = *data;
    format.len = *len;

    if (!FUNC12(*data))
        return ERROR_SUCCESS;

    stack = FUNC1();
    temp = FUNC1();

    while ((type = FUNC2(&format, &str)) != FORMAT_NULL)
    {
        if (type == FORMAT_LBRACK || type == FORMAT_LBRACE ||
            type == FORMAT_LITERAL || type == FORMAT_NUMBER ||
            type == FORMAT_ESCAPE || type == FORMAT_PROPNULL)
        {
            if (type == FORMAT_LBRACE)
            {
                format.propfailed = FALSE;
                format.groups++;
            }
            else if (type == FORMAT_ESCAPE &&
                     !FUNC8(stack, FORMAT_LBRACK))
            {
                format.n -= str->len - 1;
                str->len = 1;
            }

            FUNC10(stack, str);
        }
        else if (type == FORMAT_RBRACK || type == FORMAT_RBRACE)
        {
            if (type == FORMAT_RBRACE)
                format.groups--;

            FUNC10(stack, str);

            if (FUNC8(stack, FUNC4(type)))
            {
                do
                {
                    node = FUNC9(stack);
                    FUNC10(temp, node);
                } while (node->type != FUNC4(type));

                FUNC7(&format, stack, temp);
            }
        }
    }

    *data = format.deformatted;
    *len = format.len;

    FUNC6(str);
    FUNC3(stack);
    FUNC3(temp);

    return ERROR_SUCCESS;
}