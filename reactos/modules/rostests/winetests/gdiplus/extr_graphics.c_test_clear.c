
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;


 int GdipGraphicsClear (int *,int) ;
 int InvalidParameter ;
 int expect (int ,int ) ;

__attribute__((used)) static void test_clear(void)
{
    GpStatus status;

    status = GdipGraphicsClear(((void*)0), 0xdeadbeef);
    expect(InvalidParameter, status);
}
