
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UNICODE_STRING ;
struct TYPE_5__ {int * RootFcb; } ;
typedef int * PVFATFCB ;
typedef TYPE_1__* PDEVICE_EXTENSION ;


 int ASSERT (int) ;
 int RTL_CONSTANT_STRING (char*) ;
 int * vfatGrabFCBFromTable (TYPE_1__*,int *) ;
 int * vfatMakeRootFCB (TYPE_1__*) ;

PVFATFCB
vfatOpenRootFCB(
    PDEVICE_EXTENSION pVCB)
{
    PVFATFCB FCB;
    UNICODE_STRING NameU = RTL_CONSTANT_STRING(L"\\");

    FCB = vfatGrabFCBFromTable(pVCB, &NameU);
    if (FCB == ((void*)0))
    {
        FCB = vfatMakeRootFCB(pVCB);
    }
    ASSERT(FCB == pVCB->RootFcb);

    return FCB;
}
