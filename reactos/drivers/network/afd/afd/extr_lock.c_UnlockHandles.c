
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
typedef size_t UINT ;
struct TYPE_4__ {scalar_t__ Handle; } ;
typedef int PVOID ;
typedef TYPE_1__* PAFD_HANDLE ;


 int ExFreePoolWithTag (TYPE_1__*,int ) ;
 int ObDereferenceObject (int ) ;
 int TAG_AFD_POLL_HANDLE ;

VOID UnlockHandles( PAFD_HANDLE HandleArray, UINT HandleCount ) {
    UINT i;

    for( i = 0; i < HandleCount; i++ ) {
        if( HandleArray[i].Handle )
            ObDereferenceObject( (PVOID)HandleArray[i].Handle );
    }

    ExFreePoolWithTag(HandleArray, TAG_AFD_POLL_HANDLE);
    HandleArray = ((void*)0);
}
