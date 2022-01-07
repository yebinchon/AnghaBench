
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct table {size_t data; size_t num_rows; } ;
struct record_printer {int local; void* portname; scalar_t__ network; void* name; void* location; int horizontalresolution; void* drivername; void* device_id; int attributes; } ;
struct expr {int dummy; } ;
typedef enum fill_status { ____Placeholder_fill_status } fill_status ;
typedef char WCHAR ;
struct TYPE_10__ {char* pDriverName; char* pLocation; char* pPrinterName; char* pPortName; TYPE_3__* pDevMode; int Attributes; } ;
struct TYPE_7__ {int dmPrintQuality; } ;
struct TYPE_8__ {TYPE_1__ s1; } ;
struct TYPE_9__ {TYPE_2__ u1; } ;
typedef TYPE_4__ PRINTER_INFO_2W ;
typedef size_t DWORD ;
typedef int BYTE ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int EnumPrintersW (int ,int *,int,int *,size_t,size_t*,size_t*) ;
 int FILL_STATUS_FAILED ;
 int FILL_STATUS_UNFILTERED ;
 scalar_t__ GetLastError () ;
 int PRINTER_ENUM_LOCAL ;
 int TRACE (char*,size_t) ;
 int free_row_values (struct table*,size_t) ;
 TYPE_4__* heap_alloc (size_t) ;
 int heap_free (TYPE_4__*) ;
 void* heap_strdupW (char*) ;
 int match_row (struct table*,size_t,struct expr const*,int*) ;
 int resize_table (struct table*,size_t,int) ;
 int sprintfW (char*,char const*,size_t) ;

__attribute__((used)) static enum fill_status fill_printer( struct table *table, const struct expr *cond )
{
    static const WCHAR fmtW[] = {'P','r','i','n','t','e','r','%','d',0};
    struct record_printer *rec;
    enum fill_status status = FILL_STATUS_UNFILTERED;
    PRINTER_INFO_2W *info;
    DWORD i, offset = 0, count = 0, size = 0, num_rows = 0;
    WCHAR id[20];

    EnumPrintersW( PRINTER_ENUM_LOCAL, ((void*)0), 2, ((void*)0), 0, &size, &count );
    if (GetLastError() != ERROR_INSUFFICIENT_BUFFER) return FILL_STATUS_FAILED;

    if (!(info = heap_alloc( size ))) return FILL_STATUS_FAILED;
    if (!EnumPrintersW( PRINTER_ENUM_LOCAL, ((void*)0), 2, (BYTE *)info, size, &size, &count ))
    {
        heap_free( info );
        return FILL_STATUS_FAILED;
    }
    if (!resize_table( table, count, sizeof(*rec) ))
    {
        heap_free( info );
        return FILL_STATUS_FAILED;
    }

    for (i = 0; i < count; i++)
    {
        rec = (struct record_printer *)(table->data + offset);
        rec->attributes = info[i].Attributes;
        sprintfW( id, fmtW, i );
        rec->device_id = heap_strdupW( id );
        rec->drivername = heap_strdupW( info[i].pDriverName );
        rec->horizontalresolution = info[i].pDevMode->u1.s1.dmPrintQuality;
        rec->local = -1;
        rec->location = heap_strdupW( info[i].pLocation );
        rec->name = heap_strdupW( info[i].pPrinterName );
        rec->network = 0;
        rec->portname = heap_strdupW( info[i].pPortName );
        if (!match_row( table, i, cond, &status ))
        {
            free_row_values( table, i );
            continue;
        }
        offset += sizeof(*rec);
        num_rows++;
    }
    TRACE("created %u rows\n", num_rows);
    table->num_rows = num_rows;

    heap_free( info );
    return status;
}
