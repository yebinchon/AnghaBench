
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int TDI_STATUS ;
typedef int TDIEntityID ;
typedef int * PVOID ;
typedef int PUINT ;
typedef int * PNDIS_BUFFER ;
typedef int PIP_INTERFACE ;
typedef int * PIPARP_ENTRY ;
typedef int NTSTATUS ;
typedef int IPARP_ENTRY ;


 int ARP_ENTRY_TAG ;
 int * ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePoolWithTag (int *,int ) ;
 int InfoCopyOut (int *,int,int *,int ) ;
 int NBCopyNeighbors (int ,int *) ;
 int NonPagedPool ;
 int STATUS_NO_MEMORY ;

TDI_STATUS InfoTdiQueryGetArptableMIB(TDIEntityID ID,
          PIP_INTERFACE Interface,
          PNDIS_BUFFER Buffer,
          PUINT BufferSize) {
    NTSTATUS Status;
    ULONG NumNeighbors = NBCopyNeighbors( Interface, ((void*)0) );
    ULONG MemSize = NumNeighbors * sizeof(IPARP_ENTRY);
    PIPARP_ENTRY ArpEntries;

    if (MemSize != 0)
    {
        ArpEntries = ExAllocatePoolWithTag( NonPagedPool, MemSize, ARP_ENTRY_TAG );
        if( !ArpEntries ) return STATUS_NO_MEMORY;

        NBCopyNeighbors( Interface, ArpEntries );

        Status = InfoCopyOut( (PVOID)ArpEntries, MemSize, Buffer, BufferSize );

        ExFreePoolWithTag( ArpEntries, ARP_ENTRY_TAG );
    }
    else
    {
        Status = InfoCopyOut(((void*)0), 0, ((void*)0), BufferSize);
    }

    return Status;
}
