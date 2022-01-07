
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_10__ {struct TYPE_10__* Next; } ;
struct TYPE_8__ {TYPE_3__* Head; } ;
struct TYPE_9__ {TYPE_1__ Private; } ;
typedef int PVOID ;
typedef scalar_t__* PUINT ;
typedef TYPE_2__* PNDIS_PACKET ;
typedef TYPE_3__* PNDIS_BUFFER ;


 scalar_t__ MmGetMdlByteCount (TYPE_3__*) ;
 int MmGetMdlVirtualAddress (TYPE_3__*) ;

VOID XNdisGetFirstBufferFromPacket(PNDIS_PACKET Packet,
       PNDIS_BUFFER *FirstBuffer,
       PVOID *FirstBufferVA,
       PUINT FirstBufferLength,
       PUINT TotalBufferLength)
{
    PNDIS_BUFFER _Buffer;

    _Buffer = (Packet)->Private.Head;
    *(FirstBuffer) = _Buffer;
    *(FirstBufferVA) = MmGetMdlVirtualAddress(_Buffer);
    if (_Buffer != ((void*)0)) {
        *(FirstBufferLength) = MmGetMdlByteCount(_Buffer);
        _Buffer = _Buffer->Next;
    } else
        *(FirstBufferLength) = 0;
    *(TotalBufferLength) = *(FirstBufferLength);
    while (_Buffer != ((void*)0)) {
        *(TotalBufferLength) += MmGetMdlByteCount(_Buffer);
        _Buffer = _Buffer->Next;
    }
}
