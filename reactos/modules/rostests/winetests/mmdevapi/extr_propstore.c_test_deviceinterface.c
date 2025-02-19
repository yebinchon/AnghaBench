
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_10__ {int member_0; int member_1; int member_2; TYPE_3__ member_3; } ;
struct TYPE_13__ {int member_1; TYPE_2__ member_0; } ;
struct TYPE_9__ {int pwszVal; } ;
struct TYPE_12__ {scalar_t__ vt; TYPE_1__ u; } ;
typedef TYPE_4__ PROPVARIANT ;
typedef TYPE_5__ PROPERTYKEY ;
typedef int IPropertyStore ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IPropertyStore_GetValue (int *,TYPE_5__ const*,TYPE_4__*) ;
 int PropVariantClear (TYPE_4__*) ;
 scalar_t__ S_OK ;
 scalar_t__ VT_EMPTY ;
 scalar_t__ VT_LPWSTR ;
 int ok (int,char*,scalar_t__) ;
 int trace (char*,int ) ;
 int wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_deviceinterface(IPropertyStore *store)
{
    HRESULT hr;
    PROPVARIANT pv;

    static const PROPERTYKEY deviceinterface_key = {
        {0x233164c8, 0x1b2c, 0x4c7d, {0xbc, 0x68, 0xb6, 0x71, 0x68, 0x7a, 0x25, 0x67}}, 1
    };

    pv.vt = VT_EMPTY;
    hr = IPropertyStore_GetValue(store, &deviceinterface_key, &pv);
    ok(hr == S_OK, "GetValue failed: %08x\n", hr);
    ok(pv.vt == VT_LPWSTR, "Got wrong variant type: 0x%x\n", pv.vt);
    trace("device interface: %s\n", wine_dbgstr_w(pv.u.pwszVal));
    PropVariantClear(&pv);
}
