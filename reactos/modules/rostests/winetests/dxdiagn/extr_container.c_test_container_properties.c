
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property_test {scalar_t__ vt; int prop; } ;
typedef int VARIANT ;
typedef int IDxDiagContainer ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;


 scalar_t__ IDxDiagContainer_GetNumberOfProps (int *,scalar_t__*) ;
 scalar_t__ IDxDiagContainer_GetProp (int *,int ,int *) ;
 scalar_t__ S_OK ;
 scalar_t__ V_VT (int *) ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;
 int debugstr_variant (int *) ;
 int ok (int,char*,int,...) ;
 int trace (char*,scalar_t__,int ) ;
 scalar_t__ wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_container_properties(IDxDiagContainer *container, const struct property_test *property_tests, size_t len)
{
    HRESULT hr;


    if (len == 0)
    {
        DWORD prop_count;

        hr = IDxDiagContainer_GetNumberOfProps(container, &prop_count);
        ok(hr == S_OK, "Expected IDxDiagContainer::GetNumberOfProps to return S_OK, got 0x%08x\n", hr);
        if (hr == S_OK)
            ok(prop_count == 0, "Expected container property count to be zero, got %u\n", prop_count);
    }
    else
    {
        VARIANT var;
        int i;

        VariantInit(&var);


        for (i = 0; i < len; i++)
        {
            hr = IDxDiagContainer_GetProp(container, property_tests[i].prop, &var);
            ok(hr == S_OK, "[%d] Expected IDxDiagContainer::GetProp to return S_OK for %s, got 0x%08x\n",
               i, wine_dbgstr_w(property_tests[i].prop), hr);

            if (hr == S_OK)
            {
                ok(V_VT(&var) == property_tests[i].vt,
                   "[%d] Expected variant type %d, got %d\n", i, property_tests[i].vt, V_VT(&var));
                trace("%s = %s\n", wine_dbgstr_w(property_tests[i].prop), debugstr_variant(&var));
                VariantClear(&var);
            }
        }
    }
}
