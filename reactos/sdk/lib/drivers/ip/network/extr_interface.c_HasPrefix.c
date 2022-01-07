
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int Address; } ;
typedef int* PUCHAR ;
typedef TYPE_1__* PIP_ADDRESS ;
typedef int BOOLEAN ;


 int A2S (TYPE_1__*) ;
 int DEBUG_ROUTER ;
 int FALSE ;
 int TI_DbgPrint (int ,char*) ;
 int TRUE ;

BOOLEAN HasPrefix(
    PIP_ADDRESS Address,
    PIP_ADDRESS Prefix,
    UINT Length)
{
    PUCHAR pAddress = (PUCHAR)&Address->Address;
    PUCHAR pPrefix = (PUCHAR)&Prefix->Address;

    TI_DbgPrint(DEBUG_ROUTER, ("Called. Address (0x%X)  Prefix (0x%X)  Length (%d).\n", Address, Prefix, Length));







    if (Length == 0) {
        return FALSE;
    }


    while (Length > 8) {
        if (*pAddress++ != *pPrefix++)
            return FALSE;
        Length -= 8;
    }


    if ((Length > 0) && ((*pAddress >> (8 - Length)) != (*pPrefix >> (8 - Length))))
        return FALSE;

    return TRUE;
}
