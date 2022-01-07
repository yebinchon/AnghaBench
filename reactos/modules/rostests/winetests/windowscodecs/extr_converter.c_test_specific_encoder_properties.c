
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ var_type; scalar_t__ initial_var_type; scalar_t__ i_init_val; scalar_t__ f_init_val; scalar_t__ name; scalar_t__ skippable; } ;
typedef TYPE_1__ property_opt_test_data ;
typedef int VARIANT ;
struct TYPE_8__ {scalar_t__ vt; scalar_t__ dwType; scalar_t__ cfType; scalar_t__ pstrName; int member_0; } ;
typedef TYPE_2__ PROPBAG2 ;
typedef scalar_t__ LPOLESTR ;
typedef int IPropertyBag2 ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IPropertyBag2_Read (int *,int,TYPE_2__*,int *,int *,scalar_t__*) ;
 scalar_t__ PROPBAG2_TYPE_DATA ;
 int SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;

 scalar_t__ VT_EMPTY ;


 scalar_t__ V_UNION (int *,int ) ;
 scalar_t__ V_VT (int *) ;
 int VariantClear (int *) ;
 int bVal ;
 int find_property_index (scalar_t__,TYPE_2__*,int) ;
 int fltVal ;
 int ok (int,char*,int ,...) ;
 int win_skip (char*,int ) ;
 int wine_dbgstr_w (scalar_t__) ;

__attribute__((used)) static void test_specific_encoder_properties(IPropertyBag2 *options, const property_opt_test_data* data, PROPBAG2* all_props, int all_prop_cnt)
{
    HRESULT hr;
    int i = 0;
    VARIANT pvarValue;
    HRESULT phrError = S_OK;

    while (data[i].name)
    {
        int idx = find_property_index(data[i].name, all_props, all_prop_cnt);
        PROPBAG2 pb = {0};
        pb.pstrName = (LPOLESTR)data[i].name;

        hr = IPropertyBag2_Read(options, 1, &pb, ((void*)0), &pvarValue, &phrError);

        if (data[i].skippable && idx == -1)
        {
            win_skip("Property %s is not supported on this machine.\n", wine_dbgstr_w(data[i].name));
            i++;
            continue;
        }

        ok(idx >= 0, "Property %s not in output of GetPropertyInfo\n",
           wine_dbgstr_w(data[i].name));
        if (idx >= 0)
        {
            ok(all_props[idx].vt == data[i].var_type, "Property %s has unexpected vt type, vt=%i\n",
               wine_dbgstr_w(data[i].name), all_props[idx].vt);
            ok(all_props[idx].dwType == PROPBAG2_TYPE_DATA, "Property %s has unexpected dw type, vt=%i\n",
               wine_dbgstr_w(data[i].name), all_props[idx].dwType);
            ok(all_props[idx].cfType == 0, "Property %s has unexpected cf type, vt=%i\n",
               wine_dbgstr_w(data[i].name), all_props[idx].cfType);
        }

        ok(SUCCEEDED(hr), "Reading property %s from bag failed, hr=%x\n",
           wine_dbgstr_w(data[i].name), hr);

        if (SUCCEEDED(hr))
        {

            ok(V_VT(&pvarValue) == data[i].initial_var_type || V_VT(&pvarValue) == VT_EMPTY,
               "Property %s has unexpected initial type, V_VT=%i\n",
               wine_dbgstr_w(data[i].name), V_VT(&pvarValue));

            if(V_VT(&pvarValue) == data[i].initial_var_type)
            {
                switch (data[i].initial_var_type)
                {
                    case 130:
                    case 128:
                        ok(V_UNION(&pvarValue, bVal) == data[i].i_init_val, "Property %s has an unexpected initial value, pvarValue=%i\n",
                           wine_dbgstr_w(data[i].name), V_UNION(&pvarValue, bVal));
                        break;
                    case 129:
                        ok(V_UNION(&pvarValue, fltVal) == data[i].f_init_val, "Property %s has an unexpected initial value, pvarValue=%f\n",
                           wine_dbgstr_w(data[i].name), V_UNION(&pvarValue, fltVal));
                        break;
                    default:
                        break;
                }
            }

            VariantClear(&pvarValue);
        }

        i++;
    }
}
