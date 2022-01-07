
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpPen ;
typedef int ARGB ;


 int GdipCreatePen1 (int ,float,int ,int **) ;
 int GdipDeletePen (int *) ;
 int InvalidParameter ;
 int Ok ;
 int UnitPixel ;
 int expect (int ,int ) ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_constructor_destructor(void)
{
    GpStatus status;
    GpPen *pen = ((void*)0);

    status = GdipCreatePen1((ARGB)0xffff00ff, 10.0f, UnitPixel, ((void*)0));
    expect(InvalidParameter, status);
    ok(pen == ((void*)0), "Expected pen to be NULL\n");

    status = GdipCreatePen1((ARGB)0xffff00ff, 10.0f, UnitPixel, &pen);
    expect(Ok, status);
    ok(pen != ((void*)0), "Expected pen to be initialized\n");

    status = GdipDeletePen(((void*)0));
    expect(InvalidParameter, status);

    status = GdipDeletePen(pen);
    expect(Ok, status);
}
