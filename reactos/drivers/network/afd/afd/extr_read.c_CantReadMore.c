
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ BytesUsed; scalar_t__ Content; } ;
struct TYPE_5__ {scalar_t__ TdiReceiveClosed; TYPE_1__ Recv; } ;
typedef TYPE_2__* PAFD_FCB ;
typedef int BOOLEAN ;



__attribute__((used)) static BOOLEAN CantReadMore( PAFD_FCB FCB ) {
    UINT BytesAvailable = FCB->Recv.Content - FCB->Recv.BytesUsed;

    return !BytesAvailable && FCB->TdiReceiveClosed;
}
