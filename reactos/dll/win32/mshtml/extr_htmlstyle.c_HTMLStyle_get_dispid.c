
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dispid; } ;
typedef TYPE_1__ style_tbl_entry_t ;
typedef int HRESULT ;
typedef int DispatchEx ;
typedef int DWORD ;
typedef int DISPID ;
typedef int BSTR ;


 int DISP_E_UNKNOWNNAME ;
 int S_OK ;
 TYPE_1__* lookup_style_tbl (int ) ;

__attribute__((used)) static HRESULT HTMLStyle_get_dispid(DispatchEx *dispex, BSTR name, DWORD flags, DISPID *dispid)
{
    const style_tbl_entry_t *style_entry;

    style_entry = lookup_style_tbl(name);
    if(style_entry) {
        *dispid = style_entry->dispid;
        return S_OK;
    }

    return DISP_E_UNKNOWNNAME;
}
