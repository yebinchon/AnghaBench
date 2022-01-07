
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_10__ {char* deformatted; scalar_t__ groups; void* propfailed; void* groupfailed; } ;
struct TYPE_9__ {int n; int len; int type; scalar_t__ propfound; scalar_t__ nonprop; } ;
typedef int STACK ;
typedef TYPE_1__ FORMSTR ;
typedef TYPE_2__ FORMAT ;
typedef void* BOOL ;


 void* FALSE ;
 int FORMAT_LITERAL ;
 void* TRUE ;
 int * dup_formstr (TYPE_2__*,TYPE_1__*,int*) ;
 TYPE_1__* msi_alloc_zero (int) ;
 int msi_free (TYPE_1__*) ;
 TYPE_1__* stack_pop (int *) ;

__attribute__((used)) static WCHAR *replace_stack_group( FORMAT *format, STACK *values,
                                   BOOL *propfound, BOOL *nonprop,
                                   int *oldsize, int *type, int *len )
{
    WCHAR *replaced;
    FORMSTR *content, *node;
    int n;

    *nonprop = FALSE;
    *propfound = FALSE;

    node = stack_pop(values);
    n = node->n;
    *oldsize = node->len;
    msi_free(node);

    while ((node = stack_pop(values)))
    {
        *oldsize += node->len;

        if (node->nonprop)
            *nonprop = TRUE;

        if (node->propfound)
            *propfound = TRUE;

        msi_free(node);
    }

    content = msi_alloc_zero(sizeof(FORMSTR));
    content->n = n;
    content->len = *oldsize;
    content->type = FORMAT_LITERAL;

    if (!format->groupfailed && (*oldsize == 2 ||
        (format->propfailed && !*nonprop)))
    {
        msi_free(content);
        return ((void*)0);
    }
    else if (format->deformatted[content->n + 1] == '{' &&
             format->deformatted[content->n + content->len - 2] == '}')
    {
        format->groupfailed = FALSE;
        content->len = 0;
    }
    else if (*propfound && !*nonprop &&
             !format->groupfailed && format->groups == 0)
    {
        content->n++;
        content->len -= 2;
    }
    else
    {
        if (format->groups != 0)
            format->groupfailed = TRUE;

        *nonprop = TRUE;
    }

    replaced = dup_formstr( format, content, len );
    *type = content->type;
    msi_free(content);

    if (format->groups == 0)
        format->propfailed = FALSE;

    return replaced;
}
