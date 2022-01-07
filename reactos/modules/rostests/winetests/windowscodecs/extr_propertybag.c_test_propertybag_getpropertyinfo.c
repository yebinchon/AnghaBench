
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_3__ {scalar_t__ vt; scalar_t__ dwType; int pstrName; } ;
typedef TYPE_1__ PROPBAG2 ;
typedef int IPropertyBag2 ;
typedef scalar_t__ HRESULT ;


 int CoTaskMemFree (int ) ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IPropertyBag2_GetPropertyInfo (int *,scalar_t__,scalar_t__,TYPE_1__*,scalar_t__*) ;
 scalar_t__ PROPBAG2_TYPE_DATA ;
 scalar_t__ S_OK ;
 scalar_t__ VT_R4 ;
 scalar_t__ VT_UI1 ;
 scalar_t__ WINCODEC_ERR_VALUEOUTOFRANGE ;
 scalar_t__ lstrcmpW (int ,int ) ;
 int ok (int,char*,scalar_t__,...) ;
 scalar_t__ wine_dbgstr_w (int ) ;
 int wszTestProperty1 ;
 int wszTestProperty2 ;

__attribute__((used)) static void test_propertybag_getpropertyinfo(IPropertyBag2 *property, ULONG expected_count)
{
    HRESULT hr;
    PROPBAG2 pb[2];
    ULONG out_count;


    hr = IPropertyBag2_GetPropertyInfo(property, expected_count, 1, pb, &out_count);
    ok(hr == WINCODEC_ERR_VALUEOUTOFRANGE,
       "GetPropertyInfo handled iProperty out of bounce wrong, hr=%x\n", hr);


    hr = IPropertyBag2_GetPropertyInfo(property, 0, expected_count+1, pb, &out_count);
    ok(hr == WINCODEC_ERR_VALUEOUTOFRANGE,
       "GetPropertyInfo handled cProperty out of bounce wrong, hr=%x\n", hr);


    if (expected_count == 0)
        return;

    hr = IPropertyBag2_GetPropertyInfo(property, 0, expected_count, pb, &out_count);
    ok(hr == S_OK, "GetPropertyInfo failed, hr=%x\n", hr);
    if (FAILED(hr))
        return;

    ok(expected_count == out_count,
       "GetPropertyInfo returned unexpected property count, %i != %i)\n",
       expected_count, out_count);

    if(expected_count != 2)
        return;

    ok(pb[0].vt == VT_UI1, "Invalid variant type, pb[0].vt=%x\n", pb[0].vt);
    ok(pb[0].dwType == PROPBAG2_TYPE_DATA, "Invalid variant type, pb[0].dwType=%x\n", pb[0].dwType);
    ok(lstrcmpW(pb[0].pstrName, wszTestProperty1) == 0, "Invalid property name, pb[0].pstrName=%s\n", wine_dbgstr_w(pb[0].pstrName));
    CoTaskMemFree(pb[0].pstrName);

    ok(pb[1].vt == VT_R4, "Invalid variant type, pb[1].vt=%x\n", pb[1].vt);
    ok(pb[1].dwType == PROPBAG2_TYPE_DATA, "Invalid variant type, pb[1].dwType=%x\n", pb[1].dwType);
    ok(lstrcmpW(pb[1].pstrName, wszTestProperty2) == 0, "Invalid property name, pb[1].pstrName=%s\n", wine_dbgstr_w(pb[1].pstrName));
    CoTaskMemFree(pb[1].pstrName);
}
