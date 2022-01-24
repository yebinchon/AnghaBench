#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct table {scalar_t__ num_rows; scalar_t__ data; } ;
struct record_networkadapterconfig {int dhcpenabled; int ipconnectionmetric; int ipenabled; int /*<<< orphan*/  index; int /*<<< orphan*/  settingid; int /*<<< orphan*/  mac_address; int /*<<< orphan*/  ipsubnet; int /*<<< orphan*/  ipaddress; int /*<<< orphan*/  dnsserversearchorder; int /*<<< orphan*/  dnshostname; int /*<<< orphan*/  description; int /*<<< orphan*/  defaultipgateway; } ;
struct expr {int dummy; } ;
typedef  enum fill_status { ____Placeholder_fill_status } fill_status ;
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/  IfIndex; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
struct TYPE_9__ {scalar_t__ IfType; int /*<<< orphan*/  PhysicalAddressLength; int /*<<< orphan*/  PhysicalAddress; int /*<<< orphan*/  FirstUnicastAddress; TYPE_2__ u; int /*<<< orphan*/  FirstDnsServerAddress; int /*<<< orphan*/  Description; int /*<<< orphan*/  FirstGatewayAddress; struct TYPE_9__* Next; } ;
typedef  TYPE_3__ IP_ADAPTER_ADDRESSES ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 scalar_t__ ERROR_BUFFER_OVERFLOW ; 
 int FILL_STATUS_FAILED ; 
 int FILL_STATUS_UNFILTERED ; 
 int /*<<< orphan*/  GAA_FLAG_INCLUDE_ALL_GATEWAYS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,scalar_t__*) ; 
 scalar_t__ IF_TYPE_SOFTWARE_LOOPBACK ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct table*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct table*,scalar_t__,struct expr const*,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct table*,scalar_t__,int) ; 

__attribute__((used)) static enum fill_status FUNC15( struct table *table, const struct expr *cond )
{
    struct record_networkadapterconfig *rec;
    IP_ADAPTER_ADDRESSES *aa, *buffer;
    UINT row = 0, offset = 0, count = 0;
    DWORD size = 0, ret;
    enum fill_status status = FILL_STATUS_UNFILTERED;

    ret = FUNC0( AF_UNSPEC, GAA_FLAG_INCLUDE_ALL_GATEWAYS, NULL, NULL, &size );
    if (ret != ERROR_BUFFER_OVERFLOW) return FILL_STATUS_FAILED;

    if (!(buffer = FUNC10( size ))) return FILL_STATUS_FAILED;
    if (FUNC0( AF_UNSPEC, GAA_FLAG_INCLUDE_ALL_GATEWAYS, NULL, buffer, &size ))
    {
        FUNC11( buffer );
        return FILL_STATUS_FAILED;
    }
    for (aa = buffer; aa; aa = aa->Next)
    {
        if (aa->IfType != IF_TYPE_SOFTWARE_LOOPBACK) count++;
    }
    if (!FUNC14( table, count, sizeof(*rec) ))
    {
        FUNC11( buffer );
        return FILL_STATUS_FAILED;
    }
    for (aa = buffer; aa; aa = aa->Next)
    {
        if (aa->IfType == IF_TYPE_SOFTWARE_LOOPBACK) continue;

        rec = (struct record_networkadapterconfig *)(table->data + offset);
        rec->defaultipgateway     = FUNC3( aa->FirstGatewayAddress );
        rec->description          = FUNC12( aa->Description );
        rec->dhcpenabled          = -1;
        rec->dnshostname          = FUNC4( aa->FirstUnicastAddress );
        rec->dnsserversearchorder = FUNC5( aa->FirstDnsServerAddress );
        rec->index                = aa->u.s.IfIndex;
#ifndef __REACTOS__
        rec->ipaddress            = FUNC6( aa->FirstUnicastAddress );
#endif
        rec->ipconnectionmetric   = 20;
        rec->ipenabled            = -1;
#ifndef __REACTOS__
        rec->ipsubnet             = FUNC7( aa->FirstUnicastAddress );
#endif
        rec->mac_address          = FUNC8( aa->PhysicalAddress, aa->PhysicalAddressLength );
        rec->settingid            = FUNC9( rec->index );
        if (!FUNC13( table, row, cond, &status ))
        {
            FUNC2( table, row );
            continue;
        }
        offset += sizeof(*rec);
        row++;
    }
    FUNC1("created %u rows\n", row);
    table->num_rows = row;

    FUNC11( buffer );
    return status;
}