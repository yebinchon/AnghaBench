#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ var_type; scalar_t__ initial_var_type; scalar_t__ i_init_val; scalar_t__ f_init_val; scalar_t__ name; scalar_t__ skippable; } ;
typedef  TYPE_1__ property_opt_test_data ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_8__ {scalar_t__ vt; scalar_t__ dwType; scalar_t__ cfType; scalar_t__ pstrName; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ PROPBAG2 ;
typedef  scalar_t__ LPOLESTR ;
typedef  int /*<<< orphan*/  IPropertyBag2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ PROPBAG2_TYPE_DATA ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ S_OK ; 
#define  VT_BOOL 130 
 scalar_t__ VT_EMPTY ; 
#define  VT_R4 129 
#define  VT_UI1 128 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bVal ; 
 int FUNC5 (scalar_t__,TYPE_2__*,int) ; 
 int /*<<< orphan*/  fltVal ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static void FUNC9(IPropertyBag2 *options, const property_opt_test_data* data, PROPBAG2* all_props, int all_prop_cnt)
{
    HRESULT hr;
    int i = 0;
    VARIANT pvarValue;
    HRESULT phrError = S_OK;

    while (data[i].name)
    {
        int idx = FUNC5(data[i].name, all_props, all_prop_cnt);
        PROPBAG2 pb = {0};
        pb.pstrName = (LPOLESTR)data[i].name;

        hr = FUNC0(options, 1, &pb, NULL, &pvarValue, &phrError);

        if (data[i].skippable && idx == -1)
        {
            FUNC7("Property %s is not supported on this machine.\n", FUNC8(data[i].name));
            i++;
            continue;
        }

        FUNC6(idx >= 0, "Property %s not in output of GetPropertyInfo\n",
           FUNC8(data[i].name));
        if (idx >= 0)
        {
            FUNC6(all_props[idx].vt == data[i].var_type, "Property %s has unexpected vt type, vt=%i\n",
               FUNC8(data[i].name), all_props[idx].vt);
            FUNC6(all_props[idx].dwType == PROPBAG2_TYPE_DATA, "Property %s has unexpected dw type, vt=%i\n",
               FUNC8(data[i].name), all_props[idx].dwType);
            FUNC6(all_props[idx].cfType == 0, "Property %s has unexpected cf type, vt=%i\n",
               FUNC8(data[i].name), all_props[idx].cfType);
        }

        FUNC6(FUNC1(hr), "Reading property %s from bag failed, hr=%x\n",
           FUNC8(data[i].name), hr);

        if (FUNC1(hr))
        {
            /* On XP the initial type is always VT_EMPTY */
            FUNC6(FUNC3(&pvarValue) == data[i].initial_var_type || FUNC3(&pvarValue) == VT_EMPTY,
               "Property %s has unexpected initial type, V_VT=%i\n",
               FUNC8(data[i].name), FUNC3(&pvarValue));

            if(FUNC3(&pvarValue) == data[i].initial_var_type)
            {
                switch (data[i].initial_var_type)
                {
                    case VT_BOOL:
                    case VT_UI1:
                        FUNC6(FUNC2(&pvarValue, bVal) == data[i].i_init_val, "Property %s has an unexpected initial value, pvarValue=%i\n",
                           FUNC8(data[i].name), FUNC2(&pvarValue, bVal));
                        break;
                    case VT_R4:
                        FUNC6(FUNC2(&pvarValue, fltVal) == data[i].f_init_val, "Property %s has an unexpected initial value, pvarValue=%f\n",
                           FUNC8(data[i].name), FUNC2(&pvarValue, fltVal));
                        break;
                    default:
                        break;
                }
            }

            FUNC4(&pvarValue);
        }

        i++;
    }
}