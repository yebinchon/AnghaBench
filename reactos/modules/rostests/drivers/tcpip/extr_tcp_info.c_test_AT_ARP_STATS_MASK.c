#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  S_addr; } ;
struct in_addr {TYPE_2__ S_un; } ;
typedef  scalar_t__ ULONG ;
struct TYPE_14__ {scalar_t__ ai_numroutes; scalar_t__ ai_unknown; scalar_t__ ae_index; scalar_t__ ae_unknown; int /*<<< orphan*/  ae_address; int /*<<< orphan*/  ae_physaddrlen; int /*<<< orphan*/  ae_physaddr; } ;
struct TYPE_11__ {int /*<<< orphan*/  toi_id; int /*<<< orphan*/  toi_type; int /*<<< orphan*/  toi_class; int /*<<< orphan*/  toi_entity; } ;
struct TYPE_13__ {TYPE_1__ ID; } ;
typedef  int /*<<< orphan*/  TDIEntityID ;
typedef  TYPE_3__ TCP_REQUEST_QUERY_INFORMATION_EX ;
typedef  int /*<<< orphan*/  Request ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  int /*<<< orphan*/  ArpInfo ;
typedef  int /*<<< orphan*/  ArpEntries ;
typedef  TYPE_4__ ARPInfo ;
typedef  TYPE_4__ ARPEntry ;

/* Variables and functions */
 scalar_t__ AT_ARP ; 
 int /*<<< orphan*/  AT_MIB_ADDRXLAT_ENTRY_ID ; 
 int /*<<< orphan*/  AT_MIB_ADDRXLAT_INFO_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int,TYPE_4__*,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  INFO_CLASS_PROTOCOL ; 
 int /*<<< orphan*/  INFO_TYPE_PROVIDER ; 
 int /*<<< orphan*/  IOCTL_TCP_QUERY_INFORMATION_EX ; 
 int /*<<< orphan*/  IndentationLevel ; 
 int /*<<< orphan*/  FUNC4 (struct in_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TcpFileHandle ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int) ; 

__attribute__((used)) static
void
FUNC10(
    TDIEntityID Id,
    ULONG EntityType)
{
    ARPInfo ArpInfo;
    TCP_REQUEST_QUERY_INFORMATION_EX Request;
    ULONG BufferSize = 0;
    BOOL Result;

    /* Not valid for other entity types */
    if (EntityType != AT_ARP)
        return;

    FUNC5(&Request, sizeof(Request));
    Request.ID.toi_entity = Id;
    Request.ID.toi_class = INFO_CLASS_PROTOCOL;
    Request.ID.toi_type = INFO_TYPE_PROVIDER;
    Request.ID.toi_id = AT_MIB_ADDRXLAT_INFO_ID;

    Result = FUNC0(
        TcpFileHandle,
        IOCTL_TCP_QUERY_INFORMATION_EX,
        &Request,
        sizeof(Request),
        &ArpInfo,
        sizeof(ArpInfo),
        &BufferSize,
        NULL);
    FUNC8(Result, "DeviceIoControl failed.\n");
    FUNC9(BufferSize, sizeof(ArpInfo));

    FUNC7("ARP Info:\n");
    IndentationLevel++;

    FUNC7("ai_numroutes: %lu\n", ArpInfo.ai_numroutes);
    FUNC7("ai_unknown:   %lx\n", ArpInfo.ai_unknown);

    if (ArpInfo.ai_numroutes)
    {
        ARPEntry* ArpEntries;
        ULONG i;

        Request.ID.toi_id = AT_MIB_ADDRXLAT_ENTRY_ID;

        ArpEntries = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, ArpInfo.ai_numroutes * sizeof(ArpEntries[0]));
        FUNC8(ArpEntries != NULL, "\n");

        Result = FUNC0(
            TcpFileHandle,
            IOCTL_TCP_QUERY_INFORMATION_EX,
            &Request,
            sizeof(Request),
            ArpEntries,
            ArpInfo.ai_numroutes * sizeof(ArpEntries[0]),
            &BufferSize,
            NULL);
        FUNC8(Result, "DeviceIoControl failed.\n");
        FUNC9(BufferSize, ArpInfo.ai_numroutes * sizeof(ArpEntries[0]));

        for (i = 0; i < ArpInfo.ai_numroutes; i++)
        {
            CHAR AddressString[16];
            struct in_addr Addr;

            Addr.S_un.S_addr = ArpEntries[i].ae_address;
            FUNC4(&Addr, AddressString);

            FUNC7("ARP Entry %lu:\n", i);

            IndentationLevel++;

            FUNC7("ae_index:    %lu\n", ArpEntries[i].ae_index);
            FUNC7("ae_physaddr: %s\n", FUNC6(ArpEntries[i].ae_physaddr, ArpEntries[i].ae_physaddrlen));
            FUNC7("ae_address:  %lx (%s)\n", ArpEntries[i].ae_address, AddressString);
            FUNC7("ae_unknown:  %lu.\n", ArpEntries[i].ae_unknown);

            IndentationLevel--;
        }

        FUNC3(FUNC1(), 0, ArpEntries);
    }

    IndentationLevel--;
}