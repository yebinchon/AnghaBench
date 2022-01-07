
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct table {void* num_rows; scalar_t__ data; } ;
struct record_videocontroller {int availability; int current_bitsperpixel; int current_scanmode; int videoarchitecture; int videomemorytype; void* videoprocessor; void* videomodedescription; int status; int pnpdevice_id; void* name; int installeddriver; int driverversion; int driverdate; void* device_id; void* description; void* current_verticalres; scalar_t__ current_refreshrate; void* current_horizontalres; void* caption; scalar_t__ config_errorcode; void* adapter_ram; int adapter_dactype; } ;
struct expr {int dummy; } ;
typedef enum fill_status { ____Placeholder_fill_status } fill_status ;
typedef int desc ;
typedef char WCHAR ;
typedef int UINT64 ;
typedef void* UINT ;
struct TYPE_5__ {char* Description; int VendorId; void* DedicatedVideoMemory; } ;
typedef int IDXGIFactory ;
typedef int IDXGIAdapter ;
typedef int HRESULT ;
typedef TYPE_1__ DXGI_ADAPTER_DESC ;


 int CreateDXGIFactory (int *,void**) ;
 scalar_t__ FAILED (int ) ;
 int FILL_STATUS_FAILED ;
 int FILL_STATUS_UNFILTERED ;
 int IDXGIAdapter_GetDesc (int *,TYPE_1__*) ;
 int IDXGIAdapter_Release (int *) ;
 int IDXGIFactory_EnumAdapters (int *,int ,int **) ;
 int IDXGIFactory_Release (int *) ;
 int IID_IDXGIFactory ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,void*) ;
 int free_row_values (struct table*,void*) ;
 int get_bits_per_pixel (void**,void**) ;
 int get_installeddriver (int ) ;
 int get_pnpdeviceid (TYPE_1__*) ;
 void* heap_strdupW (char const*) ;
 int match_row (struct table*,void*,struct expr const*,int*) ;
 int memset (TYPE_1__*,int ,int) ;
 int resize_table (struct table*,int,int) ;
 int videocontroller_dactypeW ;
 void* videocontroller_deviceidW ;
 int videocontroller_driverdateW ;
 int videocontroller_driverversionW ;
 int videocontroller_statusW ;
 int wsprintfW (char*,char const*,void*,void*,int) ;

__attribute__((used)) static enum fill_status fill_videocontroller( struct table *table, const struct expr *cond )
{
    static const WCHAR fmtW[] = {'%','u',' ','x',' ','%','u',' ','x',' ','%','I','6','4','u',' ','c','o','l','o','r','s',0};
    struct record_videocontroller *rec;
    HRESULT hr;
    IDXGIFactory *factory = ((void*)0);
    IDXGIAdapter *adapter = ((void*)0);
    DXGI_ADAPTER_DESC desc;
    UINT row = 0, hres = 1024, vres = 768, vidmem = 512 * 1024 * 1024;
    const WCHAR *name = videocontroller_deviceidW;
    enum fill_status status = FILL_STATUS_UNFILTERED;
    WCHAR mode[44];

    if (!resize_table( table, 1, sizeof(*rec) )) return FILL_STATUS_FAILED;

    memset (&desc, 0, sizeof(desc));
    hr = CreateDXGIFactory( &IID_IDXGIFactory, (void **)&factory );
    if (FAILED(hr)) goto done;

    hr = IDXGIFactory_EnumAdapters( factory, 0, &adapter );
    if (FAILED(hr)) goto done;

    hr = IDXGIAdapter_GetDesc( adapter, &desc );
    if (SUCCEEDED(hr))
    {
        vidmem = desc.DedicatedVideoMemory;
        name = desc.Description;
    }

done:
    rec = (struct record_videocontroller *)table->data;
    rec->adapter_dactype = videocontroller_dactypeW;
    rec->adapter_ram = vidmem;
    rec->availability = 3;
    rec->config_errorcode = 0;
    rec->caption = heap_strdupW( name );
    rec->current_bitsperpixel = get_bits_per_pixel( &hres, &vres );
    rec->current_horizontalres = hres;
    rec->current_refreshrate = 0;
    rec->current_scanmode = 2;
    rec->current_verticalres = vres;
    rec->description = heap_strdupW( name );
    rec->device_id = videocontroller_deviceidW;
    rec->driverdate = videocontroller_driverdateW;
    rec->driverversion = videocontroller_driverversionW;
    rec->installeddriver = get_installeddriver( desc.VendorId );
    rec->name = heap_strdupW( name );
    rec->pnpdevice_id = get_pnpdeviceid( &desc );
    rec->status = videocontroller_statusW;
    rec->videoarchitecture = 2;
    rec->videomemorytype = 2;
    wsprintfW( mode, fmtW, hres, vres, (UINT64)1 << rec->current_bitsperpixel );
    rec->videomodedescription = heap_strdupW( mode );
    rec->videoprocessor = heap_strdupW( name );
    if (!match_row( table, row, cond, &status )) free_row_values( table, row );
    else row++;

    TRACE("created %u rows\n", row);
    table->num_rows = row;

    if (adapter) IDXGIAdapter_Release( adapter );
    if (factory) IDXGIFactory_Release( factory );
    return status;
}
