
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t USHORT ;
struct TYPE_5__ {scalar_t__ Allocated; } ;
typedef size_t* PUSHORT ;
typedef TYPE_1__* PEMS_HANDLE ;


 size_t ARRAYSIZE (TYPE_1__*) ;
 TYPE_1__* EmsHandleTable ;
 scalar_t__ TRUE ;

__attribute__((used)) static PEMS_HANDLE CreateHandle(PUSHORT Handle)
{
    PEMS_HANDLE HandleEntry;
    USHORT i;


    for (i = 1; i < ARRAYSIZE(EmsHandleTable); i++)
    {
        HandleEntry = &EmsHandleTable[i];
        if (!HandleEntry->Allocated)
        {
            *Handle = i;
            HandleEntry->Allocated = TRUE;
            return HandleEntry;
        }
    }

    return ((void*)0);
}
