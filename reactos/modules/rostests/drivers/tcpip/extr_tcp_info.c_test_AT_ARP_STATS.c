
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int S_addr; } ;
struct in_addr {TYPE_2__ S_un; } ;
typedef scalar_t__ ULONG ;
struct TYPE_14__ {scalar_t__ ai_numroutes; scalar_t__ ai_unknown; scalar_t__ ae_index; scalar_t__ ae_unknown; int ae_address; int ae_physaddrlen; int ae_physaddr; } ;
struct TYPE_11__ {int toi_id; int toi_type; int toi_class; int toi_entity; } ;
struct TYPE_13__ {TYPE_1__ ID; } ;
typedef int TDIEntityID ;
typedef TYPE_3__ TCP_REQUEST_QUERY_INFORMATION_EX ;
typedef int Request ;
typedef int CHAR ;
typedef int BOOL ;
typedef int ArpInfo ;
typedef int ArpEntries ;
typedef TYPE_4__ ARPInfo ;
typedef TYPE_4__ ARPEntry ;


 scalar_t__ AT_ARP ;
 int AT_MIB_ADDRXLAT_ENTRY_ID ;
 int AT_MIB_ADDRXLAT_INFO_ID ;
 int DeviceIoControl (int ,int ,TYPE_3__*,int,TYPE_4__*,int,scalar_t__*,int *) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_4__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_4__*) ;
 int INFO_CLASS_PROTOCOL ;
 int INFO_TYPE_PROVIDER ;
 int IOCTL_TCP_QUERY_INFORMATION_EX ;
 int IndentationLevel ;
 int RtlIpv4AddressToStringA (struct in_addr*,int *) ;
 int TcpFileHandle ;
 int ZeroMemory (TYPE_3__*,int) ;
 scalar_t__ dbg_print_physaddr (int ,int ) ;
 int indent_printf (char*,...) ;
 int ok (int ,char*) ;
 int ok_long (scalar_t__,int) ;

__attribute__((used)) static
void
test_AT_ARP_STATS(
    TDIEntityID Id,
    ULONG EntityType)
{
    ARPInfo ArpInfo;
    TCP_REQUEST_QUERY_INFORMATION_EX Request;
    ULONG BufferSize = 0;
    BOOL Result;


    if (EntityType != AT_ARP)
        return;

    ZeroMemory(&Request, sizeof(Request));
    Request.ID.toi_entity = Id;
    Request.ID.toi_class = INFO_CLASS_PROTOCOL;
    Request.ID.toi_type = INFO_TYPE_PROVIDER;
    Request.ID.toi_id = AT_MIB_ADDRXLAT_INFO_ID;

    Result = DeviceIoControl(
        TcpFileHandle,
        IOCTL_TCP_QUERY_INFORMATION_EX,
        &Request,
        sizeof(Request),
        &ArpInfo,
        sizeof(ArpInfo),
        &BufferSize,
        ((void*)0));
    ok(Result, "DeviceIoControl failed.\n");
    ok_long(BufferSize, sizeof(ArpInfo));

    indent_printf("ARP Info:\n");
    IndentationLevel++;

    indent_printf("ai_numroutes: %lu\n", ArpInfo.ai_numroutes);
    indent_printf("ai_unknown:   %lx\n", ArpInfo.ai_unknown);

    if (ArpInfo.ai_numroutes)
    {
        ARPEntry* ArpEntries;
        ULONG i;

        Request.ID.toi_id = AT_MIB_ADDRXLAT_ENTRY_ID;

        ArpEntries = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, ArpInfo.ai_numroutes * sizeof(ArpEntries[0]));
        ok(ArpEntries != ((void*)0), "\n");

        Result = DeviceIoControl(
            TcpFileHandle,
            IOCTL_TCP_QUERY_INFORMATION_EX,
            &Request,
            sizeof(Request),
            ArpEntries,
            ArpInfo.ai_numroutes * sizeof(ArpEntries[0]),
            &BufferSize,
            ((void*)0));
        ok(Result, "DeviceIoControl failed.\n");
        ok_long(BufferSize, ArpInfo.ai_numroutes * sizeof(ArpEntries[0]));

        for (i = 0; i < ArpInfo.ai_numroutes; i++)
        {
            CHAR AddressString[16];
            struct in_addr Addr;

            Addr.S_un.S_addr = ArpEntries[i].ae_address;
            RtlIpv4AddressToStringA(&Addr, AddressString);

            indent_printf("ARP Entry %lu:\n", i);

            IndentationLevel++;

            indent_printf("ae_index:    %lu\n", ArpEntries[i].ae_index);
            indent_printf("ae_physaddr: %s\n", dbg_print_physaddr(ArpEntries[i].ae_physaddr, ArpEntries[i].ae_physaddrlen));
            indent_printf("ae_address:  %lx (%s)\n", ArpEntries[i].ae_address, AddressString);
            indent_printf("ae_unknown:  %lu.\n", ArpEntries[i].ae_unknown);

            IndentationLevel--;
        }

        HeapFree(GetProcessHeap(), 0, ArpEntries);
    }

    IndentationLevel--;
}
