
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct table {scalar_t__ num_rows; scalar_t__ data; } ;
struct record_pnpentity {int device_id; } ;
struct expr {int dummy; } ;
typedef enum fill_status { ____Placeholder_fill_status } fill_status ;
typedef int devinfo ;
typedef int WCHAR ;
struct TYPE_4__ {int cbSize; int member_0; } ;
typedef TYPE_1__ SP_DEVINFO_DATA ;
typedef int HDEVINFO ;
typedef scalar_t__ DWORD ;


 int ARRAY_SIZE (int *) ;
 int DIGCF_ALLCLASSES ;
 int DIGCF_PRESENT ;
 int FILL_STATUS_UNFILTERED ;
 int MAX_PATH ;
 int SetupDiDestroyDeviceInfoList (int ) ;
 scalar_t__ SetupDiEnumDeviceInfo (int ,int ,TYPE_1__*) ;
 int SetupDiGetClassDevsW (int *,int *,int *,int) ;
 scalar_t__ SetupDiGetDeviceInstanceIdW (int ,TYPE_1__*,int *,int ,int *) ;
 int free_row_values (struct table*,scalar_t__) ;
 int heap_strdupW (int *) ;
 int match_row (struct table*,scalar_t__,struct expr const*,int*) ;
 int resize_table (struct table*,scalar_t__,int) ;

__attribute__((used)) static enum fill_status fill_pnpentity( struct table *table, const struct expr *cond )
{
    struct record_pnpentity *rec;
    enum fill_status status = FILL_STATUS_UNFILTERED;
    HDEVINFO device_info_set;
    SP_DEVINFO_DATA devinfo = {0};
    DWORD idx;

    device_info_set = SetupDiGetClassDevsW( ((void*)0), ((void*)0), ((void*)0), DIGCF_ALLCLASSES|DIGCF_PRESENT );

    devinfo.cbSize = sizeof(devinfo);

    idx = 0;
    while (SetupDiEnumDeviceInfo( device_info_set, idx++, &devinfo ))
    {

    }

    resize_table( table, idx, sizeof(*rec) );
    table->num_rows = 0;
    rec = (struct record_pnpentity *)table->data;

    idx = 0;
    while (SetupDiEnumDeviceInfo( device_info_set, idx++, &devinfo ))
    {
        WCHAR device_id[MAX_PATH];
        if (SetupDiGetDeviceInstanceIdW( device_info_set, &devinfo, device_id,
                    ARRAY_SIZE(device_id), ((void*)0) ))
        {
            rec->device_id = heap_strdupW( device_id );

            table->num_rows++;
            if (!match_row( table, table->num_rows - 1, cond, &status ))
            {
                free_row_values( table, table->num_rows - 1 );
                table->num_rows--;
            }
            else
                rec++;
        }
    }

    SetupDiDestroyDeviceInfoList( device_info_set );

    return status;
}
