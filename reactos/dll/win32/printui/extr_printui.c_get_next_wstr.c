
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t next_arg; size_t argc; scalar_t__* pNextCharW; scalar_t__** argv; } ;
typedef TYPE_1__ context_t ;
typedef scalar_t__* LPWSTR ;



__attribute__((used)) static LPWSTR get_next_wstr(context_t * cx)
{
    LPWSTR ptr;

    ptr = cx->pNextCharW;
    if (ptr && ptr[0]) {
        cx->pNextCharW = ((void*)0);
        return ptr;
    }


    if (cx->next_arg < cx->argc) {
        ptr = cx->argv[cx->next_arg];
        cx->next_arg++;
        cx->pNextCharW = ((void*)0);
        return ptr;
    }
    return ((void*)0);
}
