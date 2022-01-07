
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int propvar ;
typedef int clsid ;
struct TYPE_9__ {int lVal; int puuid; } ;
struct TYPE_10__ {scalar_t__ vt; TYPE_1__ u; } ;
typedef TYPE_2__ PROPVARIANT ;
typedef scalar_t__ HRESULT ;
typedef TYPE_2__ GUID ;


 scalar_t__ InitPropVariantFromCLSID (TYPE_2__*,TYPE_2__*) ;
 int IsEqualGUID (int ,TYPE_2__*) ;
 int PropVariantClear (TYPE_2__*) ;
 scalar_t__ S_OK ;
 scalar_t__ VT_CLSID ;
 scalar_t__ VT_I4 ;
 int memset (TYPE_2__*,int,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_InitPropVariantFromCLSID(void)
{
    PROPVARIANT propvar;
    GUID clsid;
    HRESULT hr;

    memset(&propvar, 0, sizeof(propvar));
    propvar.vt = VT_I4;
    propvar.u.lVal = 15;

    memset(&clsid, 0xcc, sizeof(clsid));
    hr = InitPropVariantFromCLSID(&clsid, &propvar);
    ok(hr == S_OK, "Unexpected hr %#x.\n", hr);
    ok(propvar.vt == VT_CLSID, "Unexpected type %d.\n", propvar.vt);
    ok(IsEqualGUID(propvar.u.puuid, &clsid), "Unexpected puuid value.\n");
    PropVariantClear(&propvar);
}
