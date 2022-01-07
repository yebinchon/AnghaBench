
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* pNextCharW; size_t next_arg; size_t argc; char** argv; } ;
typedef TYPE_1__ context_t ;
typedef char WCHAR ;
typedef scalar_t__ BOOL ;



__attribute__((used)) static WCHAR get_next_wchar(context_t * cx, BOOL use_next_parameter)
{
    WCHAR c;


    if (cx->pNextCharW) {
        c = *cx->pNextCharW;
        if (c) {
            cx->pNextCharW++;
            return c;
        }

        cx->pNextCharW = ((void*)0);
    }


    if ((cx->pNextCharW == ((void*)0)) && (cx->next_arg < cx->argc) && (use_next_parameter)) {
        cx->pNextCharW = cx->argv[cx->next_arg];
        cx->next_arg++;
    }

    if (cx->pNextCharW) {
        c = *cx->pNextCharW;
        if (c) {
            cx->pNextCharW++;
        }
        else
        {

            cx->pNextCharW = ((void*)0);
        }
        return c;
    }
    return '\0';
}
