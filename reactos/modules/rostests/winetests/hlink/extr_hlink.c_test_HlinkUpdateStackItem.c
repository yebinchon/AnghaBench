
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ HRESULT ;


 int CHECK_CALLED (int ) ;
 scalar_t__ E_INVALIDARG ;
 int HBC_UpdateHlink ;
 int HLF_UpdateHlink ;
 int HLID_CURRENT ;
 int HlinkBrowseContext ;
 scalar_t__ HlinkUpdateStackItem (int *,int *,int ,int *,char const*,int *) ;
 int Moniker ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int testframe ;

__attribute__((used)) static void test_HlinkUpdateStackItem(void)
{
    static const WCHAR location[] = {'l','o','c','a','t','i','o','n',0};
    HRESULT hr;

    hr = HlinkUpdateStackItem(((void*)0), ((void*)0), HLID_CURRENT, &Moniker, location, ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    SET_EXPECT(HBC_UpdateHlink);
    hr = HlinkUpdateStackItem(((void*)0), &HlinkBrowseContext, HLID_CURRENT, &Moniker, location, ((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);
    CHECK_CALLED(HBC_UpdateHlink);

    SET_EXPECT(HLF_UpdateHlink);
    hr = HlinkUpdateStackItem(&testframe, &HlinkBrowseContext, HLID_CURRENT, &Moniker, location, ((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);
    CHECK_CALLED(HLF_UpdateHlink);
}
