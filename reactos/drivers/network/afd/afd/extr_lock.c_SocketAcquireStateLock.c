
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Mutex; } ;
typedef TYPE_1__* PAFD_FCB ;
typedef int BOOLEAN ;


 int Executive ;
 int FALSE ;
 int KeWaitForMutexObject (int *,int ,int ,int,int *) ;
 int KernelMode ;

BOOLEAN SocketAcquireStateLock( PAFD_FCB FCB ) {
    if( !FCB ) return FALSE;

    return !KeWaitForMutexObject(&FCB->Mutex,
                                 Executive,
                                 KernelMode,
                                 FALSE,
                                 ((void*)0));
}
