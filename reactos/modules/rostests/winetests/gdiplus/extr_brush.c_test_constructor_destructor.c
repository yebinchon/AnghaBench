
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpSolidFill ;
typedef int GpBrush ;
typedef int ARGB ;


 int GdipCreateSolidFill (int ,int **) ;
 int GdipDeleteBrush (int *) ;
 int InvalidParameter ;
 int Ok ;
 int expect (int ,int ) ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_constructor_destructor(void)
{
    GpStatus status;
    GpSolidFill *brush = ((void*)0);

    status = GdipCreateSolidFill((ARGB)0xdeadbeef, &brush);
    expect(Ok, status);
    ok(brush != ((void*)0), "Expected brush to be initialized\n");

    status = GdipDeleteBrush(((void*)0));
    expect(InvalidParameter, status);

    status = GdipDeleteBrush((GpBrush*) brush);
    expect(Ok, status);
}
