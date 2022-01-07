
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IVariantChangeType ;
typedef int IServiceProvider ;
typedef int IDispatch ;
typedef scalar_t__ HRESULT ;


 int IID_IVariantChangeType ;
 scalar_t__ IServiceProvider_QueryService (int *,int *,int *,void**) ;
 int IVariantChangeType_Release (int *) ;
 int SID_VariantConversion ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;
 int * script_change_type ;
 int test_change_types (int *,int *) ;

__attribute__((used)) static void test_caller(IServiceProvider *caller, IDispatch *arg_obj)
{
    IVariantChangeType *change_type;
    HRESULT hres;

    hres = IServiceProvider_QueryService(caller, &SID_VariantConversion, &IID_IVariantChangeType, (void**)&change_type);
    ok(hres == S_OK, "Could not get SID_VariantConversion service: %08x\n", hres);

    ok(change_type == script_change_type, "change_type != script_change_type\n");
    test_change_types(change_type, arg_obj);

    IVariantChangeType_Release(change_type);
}
