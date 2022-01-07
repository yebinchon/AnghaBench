
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct table {scalar_t__ num_rows; scalar_t__ data; } ;
struct record_networkadapterconfig {int dhcpenabled; int ipconnectionmetric; int ipenabled; int index; int settingid; int mac_address; int ipsubnet; int ipaddress; int dnsserversearchorder; int dnshostname; int description; int defaultipgateway; } ;
struct expr {int dummy; } ;
typedef enum fill_status { ____Placeholder_fill_status } fill_status ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {int IfIndex; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
struct TYPE_9__ {scalar_t__ IfType; int PhysicalAddressLength; int PhysicalAddress; int FirstUnicastAddress; TYPE_2__ u; int FirstDnsServerAddress; int Description; int FirstGatewayAddress; struct TYPE_9__* Next; } ;
typedef TYPE_3__ IP_ADAPTER_ADDRESSES ;
typedef scalar_t__ DWORD ;


 int AF_UNSPEC ;
 scalar_t__ ERROR_BUFFER_OVERFLOW ;
 int FILL_STATUS_FAILED ;
 int FILL_STATUS_UNFILTERED ;
 int GAA_FLAG_INCLUDE_ALL_GATEWAYS ;
 scalar_t__ GetAdaptersAddresses (int ,int ,int *,TYPE_3__*,scalar_t__*) ;
 scalar_t__ IF_TYPE_SOFTWARE_LOOPBACK ;
 int TRACE (char*,scalar_t__) ;
 int free_row_values (struct table*,scalar_t__) ;
 int get_defaultipgateway (int ) ;
 int get_dnshostname (int ) ;
 int get_dnsserversearchorder (int ) ;
 int get_ipaddress (int ) ;
 int get_ipsubnet (int ) ;
 int get_mac_address (int ,int ) ;
 int get_settingid (int ) ;
 TYPE_3__* heap_alloc (scalar_t__) ;
 int heap_free (TYPE_3__*) ;
 int heap_strdupW (int ) ;
 int match_row (struct table*,scalar_t__,struct expr const*,int*) ;
 int resize_table (struct table*,scalar_t__,int) ;

__attribute__((used)) static enum fill_status fill_networkadapterconfig( struct table *table, const struct expr *cond )
{
    struct record_networkadapterconfig *rec;
    IP_ADAPTER_ADDRESSES *aa, *buffer;
    UINT row = 0, offset = 0, count = 0;
    DWORD size = 0, ret;
    enum fill_status status = FILL_STATUS_UNFILTERED;

    ret = GetAdaptersAddresses( AF_UNSPEC, GAA_FLAG_INCLUDE_ALL_GATEWAYS, ((void*)0), ((void*)0), &size );
    if (ret != ERROR_BUFFER_OVERFLOW) return FILL_STATUS_FAILED;

    if (!(buffer = heap_alloc( size ))) return FILL_STATUS_FAILED;
    if (GetAdaptersAddresses( AF_UNSPEC, GAA_FLAG_INCLUDE_ALL_GATEWAYS, ((void*)0), buffer, &size ))
    {
        heap_free( buffer );
        return FILL_STATUS_FAILED;
    }
    for (aa = buffer; aa; aa = aa->Next)
    {
        if (aa->IfType != IF_TYPE_SOFTWARE_LOOPBACK) count++;
    }
    if (!resize_table( table, count, sizeof(*rec) ))
    {
        heap_free( buffer );
        return FILL_STATUS_FAILED;
    }
    for (aa = buffer; aa; aa = aa->Next)
    {
        if (aa->IfType == IF_TYPE_SOFTWARE_LOOPBACK) continue;

        rec = (struct record_networkadapterconfig *)(table->data + offset);
        rec->defaultipgateway = get_defaultipgateway( aa->FirstGatewayAddress );
        rec->description = heap_strdupW( aa->Description );
        rec->dhcpenabled = -1;
        rec->dnshostname = get_dnshostname( aa->FirstUnicastAddress );
        rec->dnsserversearchorder = get_dnsserversearchorder( aa->FirstDnsServerAddress );
        rec->index = aa->u.s.IfIndex;

        rec->ipaddress = get_ipaddress( aa->FirstUnicastAddress );

        rec->ipconnectionmetric = 20;
        rec->ipenabled = -1;

        rec->ipsubnet = get_ipsubnet( aa->FirstUnicastAddress );

        rec->mac_address = get_mac_address( aa->PhysicalAddress, aa->PhysicalAddressLength );
        rec->settingid = get_settingid( rec->index );
        if (!match_row( table, row, cond, &status ))
        {
            free_row_values( table, row );
            continue;
        }
        offset += sizeof(*rec);
        row++;
    }
    TRACE("created %u rows\n", row);
    table->num_rows = row;

    heap_free( buffer );
    return status;
}
