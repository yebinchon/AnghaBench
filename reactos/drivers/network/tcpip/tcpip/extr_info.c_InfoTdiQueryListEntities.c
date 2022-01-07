
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int TDI_STATUS ;
typedef int TDIEntityID ;
typedef int* PUINT ;
typedef int PNDIS_BUFFER ;
typedef int PCHAR ;
typedef int KIRQL ;


 int CopyBufferToBufferChain (int ,int,int ,int) ;
 int DEBUG_INFO ;
 int EntityCount ;
 int * EntityList ;
 int EntityListLock ;
 int TDI_SUCCESS ;
 int TI_DbgPrint (int ,char*) ;
 int TcpipAcquireSpinLock (int *,int *) ;
 int TcpipReleaseSpinLock (int *,int ) ;

TDI_STATUS InfoTdiQueryListEntities(PNDIS_BUFFER Buffer,
        PUINT BufferSize)
{
    UINT Count, Size, BufSize = *BufferSize;
    KIRQL OldIrql;

    TI_DbgPrint(DEBUG_INFO,("About to copy %d TDIEntityIDs to user\n",
      EntityCount));

    TcpipAcquireSpinLock(&EntityListLock, &OldIrql);

    Size = EntityCount * sizeof(TDIEntityID);
    *BufferSize = Size;

    TI_DbgPrint(DEBUG_INFO,("BufSize: %d, NeededSize: %d\n", BufSize, Size));

    if (BufSize < Size || !Buffer)
    {
 TcpipReleaseSpinLock( &EntityListLock, OldIrql );


 return TDI_SUCCESS;
    }


    for( Count = 0; Count < EntityCount; Count++ ) {
 CopyBufferToBufferChain(Buffer,
    Count * sizeof(TDIEntityID),
    (PCHAR)&EntityList[Count],
    sizeof(TDIEntityID));
    }

    TcpipReleaseSpinLock(&EntityListLock, OldIrql);

    return TDI_SUCCESS;
}
