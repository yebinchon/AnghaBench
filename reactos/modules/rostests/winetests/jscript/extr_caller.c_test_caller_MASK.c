#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  IVariantChangeType ;
typedef  int /*<<< orphan*/  IServiceProvider ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  IID_IVariantChangeType ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SID_VariantConversion ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/ * script_change_type ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(IServiceProvider *caller, IDispatch *arg_obj)
{
    IVariantChangeType *change_type;
    HRESULT hres;

    hres = FUNC0(caller, &SID_VariantConversion, &IID_IVariantChangeType, (void**)&change_type);
    FUNC2(hres == S_OK, "Could not get SID_VariantConversion service: %08x\n", hres);

    FUNC2(change_type == script_change_type, "change_type != script_change_type\n");
    FUNC3(change_type, arg_obj);

    FUNC1(change_type);
}