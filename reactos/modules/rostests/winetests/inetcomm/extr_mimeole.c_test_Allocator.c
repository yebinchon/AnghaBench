
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IMimeAllocator ;
typedef scalar_t__ HRESULT ;


 int IMimeAllocator_Release (int *) ;
 scalar_t__ MimeOleGetAllocator (int **) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_Allocator(void)
{
    HRESULT hr;
    IMimeAllocator *alloc;

    hr = MimeOleGetAllocator(&alloc);
    ok(hr == S_OK, "ret %08x\n", hr);
    IMimeAllocator_Release(alloc);
}
