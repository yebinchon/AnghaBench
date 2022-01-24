#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct list {int dummy; } ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_4__ {int /*<<< orphan*/  data; int /*<<< orphan*/  entry; int /*<<< orphan*/ * guid; } ;
typedef  int /*<<< orphan*/  TLBGuid ;
typedef  TYPE_1__ TLBCustData ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_E_BADVARTYPE ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 TYPE_1__* FUNC0 (struct list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
#define  VT_BSTR 134 
#define  VT_HRESULT 133 
#define  VT_I4 132 
#define  VT_INT 131 
#define  VT_R4 130 
#define  VT_UI4 129 
#define  VT_UINT 128 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct list*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC8(struct list *custdata_list, TLBGuid *tlbguid, VARIANT *var)
{
    TLBCustData *cust_data;

    switch(FUNC2(var)){
    case VT_I4:
    case VT_R4:
    case VT_UI4:
    case VT_INT:
    case VT_UINT:
    case VT_HRESULT:
    case VT_BSTR:
        break;
    default:
        return DISP_E_BADVARTYPE;
    }

    cust_data = FUNC0(custdata_list, FUNC1(tlbguid));

    if (!cust_data) {
        cust_data = FUNC6(sizeof(TLBCustData));
        if (!cust_data)
            return E_OUTOFMEMORY;

        cust_data->guid = tlbguid;
        FUNC5(&cust_data->data);

        FUNC7(custdata_list, &cust_data->entry);
    }else
        FUNC3(&cust_data->data);

    return FUNC4(&cust_data->data, var);
}