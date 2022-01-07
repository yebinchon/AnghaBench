
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int type; int n; int len; void* propfound; void* nonprop; } ;
typedef TYPE_1__ WCHAR ;
typedef int UINT ;
struct TYPE_16__ {int n; } ;
typedef int STACK ;
typedef TYPE_1__ FORMSTR ;
typedef TYPE_3__ FORMAT ;
typedef void* BOOL ;


 int ERROR_SUCCESS ;
 void* FALSE ;
 int FORMAT_LBRACE ;
 int FORMAT_LBRACK ;
 int FORMAT_LITERAL ;
 int FORMAT_NUMBER ;
 void* TRUE ;
 TYPE_1__* format_replace (TYPE_3__*,void*,void*,int,int,TYPE_1__*,int) ;
 int msi_free (TYPE_1__*) ;
 TYPE_1__* replace_stack_group (TYPE_3__*,int *,void**,void**,int*,int*,int*) ;
 TYPE_1__* replace_stack_prop (TYPE_3__*,int *,void**,void**,int*,int*,int*) ;
 TYPE_1__* stack_peek (int *) ;
 int stack_push (int *,TYPE_1__*) ;

__attribute__((used)) static UINT replace_stack(FORMAT *format, STACK *stack, STACK *values)
{
    WCHAR *replaced = ((void*)0);
    FORMSTR *beg, *top, *node;
    BOOL propfound = FALSE, nonprop = FALSE, group = FALSE;
    int type, n, len = 0, oldsize = 0;

    node = stack_peek(values);
    type = node->type;
    n = node->n;

    if (type == FORMAT_LBRACK)
        replaced = replace_stack_prop( format, values, &propfound,
                                       &nonprop, &oldsize, &type, &len );
    else if (type == FORMAT_LBRACE)
    {
        replaced = replace_stack_group( format, values, &propfound,
                                        &nonprop, &oldsize, &type, &len );
        group = TRUE;
    }

    format->n = n;
    beg = format_replace( format, propfound, nonprop, oldsize, type, replaced, len );
    msi_free(replaced);
    if (!beg)
        return ERROR_SUCCESS;

    format->n = beg->n + beg->len;

    top = stack_peek(stack);
    if (top)
    {
        type = top->type;

        if ((type == FORMAT_LITERAL || type == FORMAT_NUMBER) &&
            type == beg->type)
        {
            top->len += beg->len;

            if (group)
                top->nonprop = FALSE;

            if (type == FORMAT_LITERAL)
                top->nonprop = beg->nonprop;

            if (beg->propfound)
                top->propfound = TRUE;

            msi_free(beg);
            return ERROR_SUCCESS;
        }
    }

    stack_push(stack, beg);
    return ERROR_SUCCESS;
}
