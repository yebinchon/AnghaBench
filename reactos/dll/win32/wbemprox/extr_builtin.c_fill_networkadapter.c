
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct table {scalar_t__ num_rows; scalar_t__ data; } ;
struct record_networkadapter {int physicaladapter; int speed; int pnpdevice_id; int netconnection_status; void* name; int manufacturer; int mac_address; int interface_index; int index; void* device_id; int adaptertype; } ;
struct expr {int dummy; } ;
typedef enum fill_status { ____Placeholder_fill_status } fill_status ;
typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {int IfIndex; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
struct TYPE_9__ {scalar_t__ IfType; char* FriendlyName; int OperStatus; int PhysicalAddressLength; int PhysicalAddress; TYPE_2__ u; struct TYPE_9__* Next; } ;
typedef TYPE_3__ IP_ADAPTER_ADDRESSES ;
typedef scalar_t__ DWORD ;


 int AF_UNSPEC ;
 scalar_t__ ERROR_BUFFER_OVERFLOW ;
 int FILL_STATUS_FAILED ;
 int FILL_STATUS_UNFILTERED ;
 scalar_t__ GetAdaptersAddresses (int ,int ,int *,TYPE_3__*,scalar_t__*) ;
 scalar_t__ IF_TYPE_SOFTWARE_LOOPBACK ;
 int TRACE (char*,scalar_t__) ;
 int compsys_manufacturerW ;
 int free_row_values (struct table*,scalar_t__) ;
 int get_adaptertype (scalar_t__,int*) ;
 int get_connection_status (int ) ;
 int get_mac_address (int ,int ) ;
 TYPE_3__* heap_alloc (scalar_t__) ;
 int heap_free (TYPE_3__*) ;
 void* heap_strdupW (char*) ;
 int match_row (struct table*,scalar_t__,struct expr const*,int*) ;
 int networkadapter_pnpdeviceidW ;
 int resize_table (struct table*,scalar_t__,int) ;
 int sprintfW (char*,char const*,int ) ;

__attribute__((used)) static enum fill_status fill_networkadapter( struct table *table, const struct expr *cond )
{
    static const WCHAR fmtW[] = {'%','u',0};
    WCHAR device_id[11];
    struct record_networkadapter *rec;
    IP_ADAPTER_ADDRESSES *aa, *buffer;
    UINT row = 0, offset = 0, count = 0;
    DWORD size = 0, ret;
    int physical;
    enum fill_status status = FILL_STATUS_UNFILTERED;

    ret = GetAdaptersAddresses( AF_UNSPEC, 0, ((void*)0), ((void*)0), &size );
    if (ret != ERROR_BUFFER_OVERFLOW) return FILL_STATUS_FAILED;

    if (!(buffer = heap_alloc( size ))) return FILL_STATUS_FAILED;
    if (GetAdaptersAddresses( AF_UNSPEC, 0, ((void*)0), buffer, &size ))
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

        rec = (struct record_networkadapter *)(table->data + offset);
        sprintfW( device_id, fmtW, aa->u.s.IfIndex );
        rec->adaptertype = get_adaptertype( aa->IfType, &physical );
        rec->device_id = heap_strdupW( device_id );
        rec->index = aa->u.s.IfIndex;
        rec->interface_index = aa->u.s.IfIndex;
        rec->mac_address = get_mac_address( aa->PhysicalAddress, aa->PhysicalAddressLength );
        rec->manufacturer = compsys_manufacturerW;
        rec->name = heap_strdupW( aa->FriendlyName );
        rec->netconnection_status = get_connection_status( aa->OperStatus );
        rec->physicaladapter = physical;
        rec->pnpdevice_id = networkadapter_pnpdeviceidW;
        rec->speed = 1000000;
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
