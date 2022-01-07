
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int AddrSize; int PhysAddr; int LogAddr; } ;
typedef int TDI_STATUS ;
typedef TYPE_1__* PVOID ;
typedef int PNEIGHBOR_CACHE_ENTRY ;
typedef int PIP_INTERFACE ;
typedef TYPE_1__* PIPARP_ENTRY ;
typedef int IP_ADDRESS ;
typedef int IPARP_ENTRY ;


 int AddrInitIPv4 (int *,int ) ;
 scalar_t__ NBAddNeighbor (int ,int *,int ,int ,int ,int ) ;
 int NBLocateNeighbor (int *,int ) ;
 int NBRemoveNeighbor (int ) ;
 int NUD_PERMANENT ;
 int TDI_INVALID_PARAMETER ;
 int TDI_SUCCESS ;

TDI_STATUS InfoTdiSetArptableMIB(PIP_INTERFACE IF, PVOID Buffer, UINT BufferSize)
{
    PIPARP_ENTRY ArpEntry = Buffer;
    IP_ADDRESS Address;
    PNEIGHBOR_CACHE_ENTRY NCE;

    if (!Buffer || BufferSize < sizeof(IPARP_ENTRY))
        return TDI_INVALID_PARAMETER;

    AddrInitIPv4(&Address, ArpEntry->LogAddr);

    if ((NCE = NBLocateNeighbor(&Address, IF)))
        NBRemoveNeighbor(NCE);

    if (NBAddNeighbor(IF,
                      &Address,
                      ArpEntry->PhysAddr,
                      ArpEntry->AddrSize,
                      NUD_PERMANENT,
                      0))
        return TDI_SUCCESS;
    else
        return TDI_INVALID_PARAMETER;
}
