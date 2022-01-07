
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RECT ;
typedef int IUnknown ;
typedef scalar_t__ HRESULT ;
typedef int HDC ;


 scalar_t__ E_INVALIDARG ;
 scalar_t__ OleDraw (int *,int ,int ,int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int viewobject ;

__attribute__((used)) static void test_OleDraw(void)
{
    HRESULT hr;
    RECT rect;

    hr = OleDraw((IUnknown*)&viewobject, 0, (HDC)0x1, ((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = OleDraw(((void*)0), 0, (HDC)0x1, ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = OleDraw(((void*)0), 0, (HDC)0x1, &rect);
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);
}
