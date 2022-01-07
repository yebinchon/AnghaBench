
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fmtW ;
typedef char WCHAR ;
struct TYPE_3__ {int Revision; int SubSysId; int DeviceId; int VendorId; } ;
typedef TYPE_1__ DXGI_ADAPTER_DESC ;


 char* heap_alloc (int) ;
 int sprintfW (char*,char const*,int ,int ,int ,int ) ;

__attribute__((used)) static WCHAR *get_pnpdeviceid( DXGI_ADAPTER_DESC *desc )
{
    static const WCHAR fmtW[] =
        {'P','C','I','\\','V','E','N','_','%','0','4','X','&','D','E','V','_','%','0','4','X',
         '&','S','U','B','S','Y','S','_','%','0','8','X','&','R','E','V','_','%','0','2','X','\\',
         '0','&','D','E','A','D','B','E','E','F','&','0','&','D','E','A','D',0};
    WCHAR *ret;

    if (!(ret = heap_alloc( sizeof(fmtW) + 2 * sizeof(WCHAR) ))) return ((void*)0);
    sprintfW( ret, fmtW, desc->VendorId, desc->DeviceId, desc->SubSysId, desc->Revision );
    return ret;
}
