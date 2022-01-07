
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;
typedef int GUID ;


 scalar_t__ CoGetCurrentLogicalThreadId (int *) ;
 scalar_t__ E_INVALIDARG ;
 int GUID_NULL ;
 int IsEqualGUID (int *,int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_CoGetCurrentLogicalThreadId(void)
{
    HRESULT hr;
    GUID id;

    hr = CoGetCurrentLogicalThreadId(((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    id = GUID_NULL;
    hr = CoGetCurrentLogicalThreadId(&id);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(!IsEqualGUID(&id, &GUID_NULL), "got null id\n");
}
